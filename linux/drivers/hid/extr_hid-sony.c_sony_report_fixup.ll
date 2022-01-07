; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.sony_sc = type { i32 }

@SINO_LITE_CONTROLLER = common dso_local global i32 0, align 4
@FUTUREMAX_DANCE_MAT = common dso_local global i32 0, align 4
@VAIO_RDESC_CONSTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Fixing up Sony RF Receiver report descriptor\0A\00", align 1
@MOTION_CONTROLLER = common dso_local global i32 0, align 4
@PS3REMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @sony_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sony_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sony_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %10 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.sony_sc* %10, %struct.sony_sc** %8, align 8
  %11 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %12 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SINO_LITE_CONTROLLER, align 4
  %15 = load i32, i32* @FUTUREMAX_DANCE_MAT, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %4, align 8
  br label %83

21:                                               ; preds = %3
  %22 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %23 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VAIO_RDESC_CONSTANT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp uge i32 %30, 56
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 54
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 55
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 7
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %54 = call i32 @hid_info(%struct.hid_device* %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 55
  store i32 6, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %47, %42, %37, %32, %28, %21
  %58 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %59 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MOTION_CONTROLLER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32* @motion_fixup(%struct.hid_device* %65, i32* %66, i32* %67)
  store i32* %68, i32** %4, align 8
  br label %83

69:                                               ; preds = %57
  %70 = load %struct.sony_sc*, %struct.sony_sc** %8, align 8
  %71 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PS3REMOTE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32* @ps3remote_fixup(%struct.hid_device* %77, i32* %78, i32* %79)
  store i32* %80, i32** %4, align 8
  br label %83

81:                                               ; preds = %69
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** %4, align 8
  br label %83

83:                                               ; preds = %81, %76, %64, %19
  %84 = load i32*, i32** %4, align 8
  ret i32* %84
}

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

declare dso_local i32* @motion_fixup(%struct.hid_device*, i32*, i32*) #1

declare dso_local i32* @ps3remote_fixup(%struct.hid_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
