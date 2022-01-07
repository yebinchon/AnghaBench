; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_guillemot.c_guillemot_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_guillemot.c_guillemot_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@GUILLEMOT_MAX_LENGTH = common dso_local global i32 0, align 4
@GUILLEMOT_MAX_START = common dso_local global i32 0, align 4
@GUILLEMOT_MAX_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i8*)* @guillemot_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guillemot_read_packet(%struct.gameport* %0, i8* %1) #0 {
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %20, %2
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @GUILLEMOT_MAX_LENGTH, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  br label %11

23:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  %24 = load %struct.gameport*, %struct.gameport** %3, align 8
  %25 = load i32, i32* @GUILLEMOT_MAX_START, align 4
  %26 = call i32 @gameport_time(%struct.gameport* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.gameport*, %struct.gameport** %3, align 8
  %28 = load i32, i32* @GUILLEMOT_MAX_STROBE, align 4
  %29 = call i32 @gameport_time(%struct.gameport* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = load %struct.gameport*, %struct.gameport** %3, align 8
  %33 = call i32 @gameport_trigger(%struct.gameport* %32)
  %34 = load %struct.gameport*, %struct.gameport** %3, align 8
  %35 = call zeroext i8 @gameport_read(%struct.gameport* %34)
  store i8 %35, i8* %7, align 1
  br label %36

36:                                               ; preds = %80, %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @GUILLEMOT_MAX_LENGTH, align 4
  %42 = mul nsw i32 %41, 8
  %43 = icmp slt i32 %40, %42
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br i1 %45, label %46, label %81

46:                                               ; preds = %44
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %8, align 4
  %49 = load i8, i8* %7, align 1
  store i8 %49, i8* %6, align 1
  %50 = load %struct.gameport*, %struct.gameport** %3, align 8
  %51 = call zeroext i8 @gameport_read(%struct.gameport* %50)
  store i8 %51, i8* %7, align 1
  %52 = load i8, i8* %7, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %6, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, -1
  %57 = and i32 %53, %56
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %46
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = ashr i32 %62, 5
  %64 = and i32 %63, 1
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 7
  %67 = shl i32 %64, %66
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = ashr i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %67
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %72, align 1
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %60, %46
  br label %36

81:                                               ; preds = %44
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @local_irq_restore(i64 %82)
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local zeroext i8 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
