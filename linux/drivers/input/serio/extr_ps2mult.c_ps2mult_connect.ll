; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.TYPE_2__*, i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.serio*, i32, i32 }
%struct.TYPE_2__ = type { %struct.serio*, i32 }
%struct.serio_driver = type { i32 }
%struct.ps2mult = type { %struct.TYPE_2__*, i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.ps2mult*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PS2MULT_NUM_PORTS = common dso_local global i32 0, align 4
@ps2mult_controls = common dso_local global i32* null, align 8
@PS2MULT_KBD_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s port at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @ps2mult_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2mult_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.ps2mult*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.serio*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %10 = load %struct.serio*, %struct.serio** %4, align 8
  %11 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %134

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.serio* @kzalloc(i32 56, i32 %18)
  %20 = bitcast %struct.serio* %19 to %struct.ps2mult*
  store %struct.ps2mult* %20, %struct.ps2mult** %6, align 8
  %21 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %22 = icmp ne %struct.ps2mult* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %134

26:                                               ; preds = %17
  %27 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %28 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %27, i32 0, i32 7
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.serio*, %struct.serio** %4, align 8
  %31 = bitcast %struct.serio* %30 to %struct.ps2mult*
  %32 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %33 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %32, i32 0, i32 6
  store %struct.ps2mult* %31, %struct.ps2mult** %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %59, %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PS2MULT_NUM_PORTS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i32*, i32** @ps2mult_controls, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %45 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %43, i32* %50, align 8
  %51 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %52 = bitcast %struct.ps2mult* %51 to %struct.serio*
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ps2mult_create_port(%struct.serio* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  br label %114

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %64 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* @PS2MULT_KBD_PORT, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %69 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %68, i32 0, i32 4
  store %struct.TYPE_2__* %67, %struct.TYPE_2__** %69, align 8
  %70 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %71 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %70, i32 0, i32 5
  store %struct.TYPE_2__* %67, %struct.TYPE_2__** %71, align 8
  %72 = load %struct.serio*, %struct.serio** %4, align 8
  %73 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %74 = bitcast %struct.ps2mult* %73 to %struct.serio*
  %75 = call i32 @serio_set_drvdata(%struct.serio* %72, %struct.serio* %74)
  %76 = load %struct.serio*, %struct.serio** %4, align 8
  %77 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %78 = call i32 @serio_open(%struct.serio* %76, %struct.serio_driver* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %62
  br label %114

82:                                               ; preds = %62
  %83 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %84 = bitcast %struct.ps2mult* %83 to %struct.serio*
  %85 = call i32 @ps2mult_reset(%struct.serio* %84)
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %110, %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @PS2MULT_NUM_PORTS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %92 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load %struct.serio*, %struct.serio** %97, align 8
  store %struct.serio* %98, %struct.serio** %9, align 8
  %99 = load %struct.serio*, %struct.serio** %4, align 8
  %100 = getelementptr inbounds %struct.serio, %struct.serio* %99, i32 0, i32 3
  %101 = load %struct.serio*, %struct.serio** %9, align 8
  %102 = getelementptr inbounds %struct.serio, %struct.serio* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.serio*, %struct.serio** %4, align 8
  %105 = getelementptr inbounds %struct.serio, %struct.serio* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_info(i32* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load %struct.serio*, %struct.serio** %9, align 8
  %109 = call i32 @serio_register_port(%struct.serio* %108)
  br label %110

110:                                              ; preds = %90
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %86

113:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %134

114:                                              ; preds = %81, %57
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %7, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %121 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load %struct.serio*, %struct.serio** %126, align 8
  %128 = call i32 @kfree(%struct.serio* %127)
  br label %115

129:                                              ; preds = %115
  %130 = load %struct.ps2mult*, %struct.ps2mult** %6, align 8
  %131 = bitcast %struct.ps2mult* %130 to %struct.serio*
  %132 = call i32 @kfree(%struct.serio* %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %129, %113, %23, %14
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ps2mult_create_port(%struct.serio*, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.serio*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @ps2mult_reset(%struct.serio*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @serio_register_port(%struct.serio*) #1

declare dso_local i32 @kfree(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
