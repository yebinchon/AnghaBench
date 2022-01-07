; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip.c_grip_gpp_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip.c_grip_gpp_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@GRIP_STROBE_GPP = common dso_local global i32 0, align 4
@GRIP_LENGTH_GPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32, i32*)* @grip_gpp_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grip_gpp_read_packet(%struct.gameport* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gameport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.gameport*, %struct.gameport** %5, align 8
  %15 = load i32, i32* @GRIP_STROBE_GPP, align 4
  %16 = call i32 @gameport_time(%struct.gameport* %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load %struct.gameport*, %struct.gameport** %5, align 8
  %23 = call i32 @gameport_read(%struct.gameport* %22)
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %23, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %10, align 1
  br label %27

27:                                               ; preds = %65, %3
  %28 = load i32, i32* %11, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %11, align 4
  %30 = load i8, i8* %10, align 1
  store i8 %30, i8* %9, align 1
  %31 = load %struct.gameport*, %struct.gameport** %5, align 8
  %32 = call i32 @gameport_read(%struct.gameport* %31)
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 3
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %10, align 1
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, -1
  %40 = load i8, i8* %9, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %27
  %46 = load i8, i8* %10, align 1
  %47 = zext i8 %46 to i32
  %48 = ashr i32 %47, 1
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = shl i32 %48, %49
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %45, %27
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @GRIP_LENGTH_GPP, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = icmp ugt i32 %63, 0
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br i1 %66, label %27, label %67

67:                                               ; preds = %65
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @local_irq_restore(i64 %68)
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @GRIP_LENGTH_GPP, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %112

74:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %103, %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @GRIP_LENGTH_GPP, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 16663056
  %84 = xor i32 %83, 8126464
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %79, %75
  %87 = phi i1 [ false, %75 ], [ %85, %79 ]
  br i1 %87, label %88, label %106

88:                                               ; preds = %86
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = lshr i32 %91, 1
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 1
  %97 = load i32, i32* @GRIP_LENGTH_GPP, align 4
  %98 = sub nsw i32 %97, 1
  %99 = shl i32 %96, %98
  %100 = or i32 %92, %99
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %75

106:                                              ; preds = %86
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @GRIP_LENGTH_GPP, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %73
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
