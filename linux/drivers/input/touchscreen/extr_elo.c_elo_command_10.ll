; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elo.c_elo_command_10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elo.c_elo_command_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elo = type { i64, i32, i32, i32, i32 }

@ELO10_LEAD_BYTE = common dso_local global i32 0, align 4
@ELO10_PACKET_LEN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ELO10_TOUCH_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elo*, i8*)* @elo_command_10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elo_command_10(%struct.elo* %0, i8* %1) #0 {
  %3 = alloca %struct.elo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.elo* %0, %struct.elo** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %5, align 4
  %8 = load i32, i32* @ELO10_LEAD_BYTE, align 4
  %9 = add nsw i32 170, %8
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %7, align 1
  %11 = load %struct.elo*, %struct.elo** %3, align 8
  %12 = getelementptr inbounds %struct.elo, %struct.elo* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.elo*, %struct.elo** %3, align 8
  %15 = getelementptr inbounds %struct.elo, %struct.elo* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @serio_pause_rx(i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @toupper(i8 zeroext %20)
  %22 = load %struct.elo*, %struct.elo** %3, align 8
  %23 = getelementptr inbounds %struct.elo, %struct.elo* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.elo*, %struct.elo** %3, align 8
  %25 = getelementptr inbounds %struct.elo, %struct.elo* %24, i32 0, i32 3
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.elo*, %struct.elo** %3, align 8
  %28 = getelementptr inbounds %struct.elo, %struct.elo* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @serio_continue_rx(i32 %29)
  %31 = load %struct.elo*, %struct.elo** %3, align 8
  %32 = getelementptr inbounds %struct.elo, %struct.elo* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ELO10_LEAD_BYTE, align 4
  %35 = trunc i32 %34 to i8
  %36 = call i64 @serio_write(i32 %33, i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %96

39:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %67, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ELO10_PACKET_LEN, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %7, align 1
  %55 = load %struct.elo*, %struct.elo** %3, align 8
  %56 = getelementptr inbounds %struct.elo, %struct.elo* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @serio_write(i32 %57, i8 zeroext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %44
  br label %96

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %40

70:                                               ; preds = %40
  %71 = load %struct.elo*, %struct.elo** %3, align 8
  %72 = getelementptr inbounds %struct.elo, %struct.elo* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i8, i8* %7, align 1
  %75 = call i64 @serio_write(i32 %73, i8 zeroext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %96

78:                                               ; preds = %70
  %79 = load %struct.elo*, %struct.elo** %3, align 8
  %80 = getelementptr inbounds %struct.elo, %struct.elo* %79, i32 0, i32 3
  %81 = load i32, i32* @HZ, align 4
  %82 = call i32 @wait_for_completion_timeout(i32* %80, i32 %81)
  %83 = load %struct.elo*, %struct.elo** %3, align 8
  %84 = getelementptr inbounds %struct.elo, %struct.elo* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ELO10_TOUCH_PACKET, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = load i8*, i8** %4, align 8
  %90 = load %struct.elo*, %struct.elo** %3, align 8
  %91 = getelementptr inbounds %struct.elo, %struct.elo* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ELO10_PACKET_LEN, align 4
  %94 = call i32 @memcpy(i8* %89, i32 %92, i32 %93)
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %88, %78
  br label %96

96:                                               ; preds = %95, %77, %65, %38
  %97 = load %struct.elo*, %struct.elo** %3, align 8
  %98 = getelementptr inbounds %struct.elo, %struct.elo* %97, i32 0, i32 1
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @serio_pause_rx(i32) #1

declare dso_local i64 @toupper(i8 zeroext) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @serio_continue_rx(i32) #1

declare dso_local i64 @serio_write(i32, i8 zeroext) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
