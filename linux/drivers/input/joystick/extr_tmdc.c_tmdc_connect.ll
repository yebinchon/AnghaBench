; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_tmdc.c_tmdc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_tmdc.c_tmdc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.gameport_driver = type { i32 }
%struct.tmdc = type { i32, %struct.tmdc**, i32, %struct.gameport* }

@TMDC_MAX_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GAMEPORT_MODE_RAW = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@tmdc_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, %struct.gameport_driver*)* @tmdc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmdc_connect(%struct.gameport* %0, %struct.gameport_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca %struct.gameport_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tmdc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store %struct.gameport_driver* %1, %struct.gameport_driver** %5, align 8
  %12 = load i32, i32* @TMDC_MAX_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = mul nuw i64 2, %13
  %16 = alloca i8, i64 %15, align 16
  store i64 %13, i64* %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.tmdc* @kzalloc(i32 32, i32 %17)
  store %struct.tmdc* %18, %struct.tmdc** %8, align 8
  %19 = icmp ne %struct.tmdc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %125

23:                                               ; preds = %2
  %24 = load %struct.gameport*, %struct.gameport** %4, align 8
  %25 = load %struct.tmdc*, %struct.tmdc** %8, align 8
  %26 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %25, i32 0, i32 3
  store %struct.gameport* %24, %struct.gameport** %26, align 8
  %27 = load %struct.gameport*, %struct.gameport** %4, align 8
  %28 = load %struct.tmdc*, %struct.tmdc** %8, align 8
  %29 = call i32 @gameport_set_drvdata(%struct.gameport* %27, %struct.tmdc* %28)
  %30 = load %struct.gameport*, %struct.gameport** %4, align 8
  %31 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %32 = load i32, i32* @GAMEPORT_MODE_RAW, align 4
  %33 = call i32 @gameport_open(%struct.gameport* %30, %struct.gameport_driver* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %119

37:                                               ; preds = %23
  %38 = load %struct.gameport*, %struct.gameport** %4, align 8
  %39 = bitcast i8* %16 to i8**
  %40 = call i32 @tmdc_read_packet(%struct.gameport* %38, i8** %39)
  %41 = load %struct.tmdc*, %struct.tmdc** %8, align 8
  %42 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = icmp ne i32 %40, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %116

47:                                               ; preds = %37
  %48 = load %struct.gameport*, %struct.gameport** %4, align 8
  %49 = load i32, i32* @tmdc_poll, align 4
  %50 = call i32 @gameport_set_poll_handler(%struct.gameport* %48, i32 %49)
  %51 = load %struct.gameport*, %struct.gameport** %4, align 8
  %52 = call i32 @gameport_set_poll_interval(%struct.gameport* %51, i32 20)
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %77, %47
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load %struct.tmdc*, %struct.tmdc** %8, align 8
  %58 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load %struct.tmdc*, %struct.tmdc** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %68, %13
  %70 = getelementptr inbounds i8, i8* %16, i64 %69
  %71 = call i32 @tmdc_setup_port(%struct.tmdc* %65, i32 %66, i8* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %81

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %53

80:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %125

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %114, %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %82
  %87 = load %struct.tmdc*, %struct.tmdc** %8, align 8
  %88 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %87, i32 0, i32 1
  %89 = load %struct.tmdc**, %struct.tmdc*** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.tmdc*, %struct.tmdc** %89, i64 %91
  %93 = load %struct.tmdc*, %struct.tmdc** %92, align 8
  %94 = icmp ne %struct.tmdc* %93, null
  br i1 %94, label %95, label %114

95:                                               ; preds = %86
  %96 = load %struct.tmdc*, %struct.tmdc** %8, align 8
  %97 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %96, i32 0, i32 1
  %98 = load %struct.tmdc**, %struct.tmdc*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.tmdc*, %struct.tmdc** %98, i64 %100
  %102 = load %struct.tmdc*, %struct.tmdc** %101, align 8
  %103 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @input_unregister_device(i32 %104)
  %106 = load %struct.tmdc*, %struct.tmdc** %8, align 8
  %107 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %106, i32 0, i32 1
  %108 = load %struct.tmdc**, %struct.tmdc*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.tmdc*, %struct.tmdc** %108, i64 %110
  %112 = load %struct.tmdc*, %struct.tmdc** %111, align 8
  %113 = call i32 @kfree(%struct.tmdc* %112)
  br label %114

114:                                              ; preds = %95, %86
  br label %82

115:                                              ; preds = %82
  br label %116

116:                                              ; preds = %115, %44
  %117 = load %struct.gameport*, %struct.gameport** %4, align 8
  %118 = call i32 @gameport_close(%struct.gameport* %117)
  br label %119

119:                                              ; preds = %116, %36
  %120 = load %struct.gameport*, %struct.gameport** %4, align 8
  %121 = call i32 @gameport_set_drvdata(%struct.gameport* %120, %struct.tmdc* null)
  %122 = load %struct.tmdc*, %struct.tmdc** %8, align 8
  %123 = call i32 @kfree(%struct.tmdc* %122)
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %125

125:                                              ; preds = %119, %80, %20
  %126 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tmdc* @kzalloc(i32, i32) #2

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, %struct.tmdc*) #2

declare dso_local i32 @gameport_open(%struct.gameport*, %struct.gameport_driver*, i32) #2

declare dso_local i32 @tmdc_read_packet(%struct.gameport*, i8**) #2

declare dso_local i32 @gameport_set_poll_handler(%struct.gameport*, i32) #2

declare dso_local i32 @gameport_set_poll_interval(%struct.gameport*, i32) #2

declare dso_local i32 @tmdc_setup_port(%struct.tmdc*, i32, i8*) #2

declare dso_local i32 @input_unregister_device(i32) #2

declare dso_local i32 @kfree(%struct.tmdc*) #2

declare dso_local i32 @gameport_close(%struct.gameport*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
