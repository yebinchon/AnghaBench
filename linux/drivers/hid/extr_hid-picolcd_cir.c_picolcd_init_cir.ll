; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_cir.c_picolcd_init_cir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_cir.c_picolcd_init_cir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { %struct.rc_dev*, %struct.TYPE_6__* }
%struct.rc_dev = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.picolcd_data* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hid_report = type { i32 }

@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@picolcd_cir_open = common dso_local global i32 0, align 4
@picolcd_cir_close = common dso_local global i32 0, align 4
@PICOLCD_NAME = common dso_local global i32 0, align 4
@RC_MAP_RC6_MCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picolcd_init_cir(%struct.picolcd_data* %0, %struct.hid_report* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.picolcd_data*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.picolcd_data* %0, %struct.picolcd_data** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %9 = call %struct.rc_dev* @rc_allocate_device(i32 %8)
  store %struct.rc_dev* %9, %struct.rc_dev** %6, align 8
  %10 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %11 = icmp ne %struct.rc_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %106

15:                                               ; preds = %2
  %16 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %17 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %17, i32 0, i32 11
  store %struct.picolcd_data* %16, %struct.picolcd_data** %18, align 8
  %19 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %20 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %21 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @picolcd_cir_open, align 4
  %23 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @picolcd_cir_close, align 4
  %26 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %27 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %29 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %34 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %36 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %41 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %43 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %48 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %51 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %56 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %59 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %64 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %67 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %72 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %75 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %79 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32* %77, i32** %80, align 8
  %81 = load i32, i32* @PICOLCD_NAME, align 4
  %82 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %83 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @RC_MAP_RC6_MCE, align 4
  %85 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %86 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = call i32 @MS_TO_NS(i32 100)
  %88 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %89 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = call i32 @US_TO_NS(i32 1)
  %91 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %92 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %94 = call i32 @rc_register_device(%struct.rc_dev* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %15
  br label %102

98:                                               ; preds = %15
  %99 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %100 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %101 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %100, i32 0, i32 0
  store %struct.rc_dev* %99, %struct.rc_dev** %101, align 8
  store i32 0, i32* %3, align 4
  br label %106

102:                                              ; preds = %97
  %103 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %104 = call i32 @rc_free_device(%struct.rc_dev* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %98, %12
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @MS_TO_NS(i32) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
