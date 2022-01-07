; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_private_obj.c_komeda_improc_obj_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_private_obj.c_komeda_improc_obj_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { i32 }
%struct.komeda_improc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.komeda_improc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@komeda_improc_obj_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_kms_dev*, %struct.komeda_improc*)* @komeda_improc_obj_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_improc_obj_add(%struct.komeda_kms_dev* %0, %struct.komeda_improc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.komeda_kms_dev*, align 8
  %5 = alloca %struct.komeda_improc*, align 8
  %6 = alloca %struct.komeda_improc_state*, align 8
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %4, align 8
  store %struct.komeda_improc* %1, %struct.komeda_improc** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.komeda_improc_state* @kzalloc(i32 16, i32 %7)
  store %struct.komeda_improc_state* %8, %struct.komeda_improc_state** %6, align 8
  %9 = load %struct.komeda_improc_state*, %struct.komeda_improc_state** %6, align 8
  %10 = icmp ne %struct.komeda_improc_state* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.komeda_improc*, %struct.komeda_improc** %5, align 8
  %16 = getelementptr inbounds %struct.komeda_improc, %struct.komeda_improc* %15, i32 0, i32 0
  %17 = load %struct.komeda_improc_state*, %struct.komeda_improc_state** %6, align 8
  %18 = getelementptr inbounds %struct.komeda_improc_state, %struct.komeda_improc_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %19, align 8
  %20 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %21 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %20, i32 0, i32 0
  %22 = load %struct.komeda_improc*, %struct.komeda_improc** %5, align 8
  %23 = getelementptr inbounds %struct.komeda_improc, %struct.komeda_improc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.komeda_improc_state*, %struct.komeda_improc_state** %6, align 8
  %26 = getelementptr inbounds %struct.komeda_improc_state, %struct.komeda_improc_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @drm_atomic_private_obj_init(i32* %21, i32* %24, i32* %27, i32* @komeda_improc_obj_funcs)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %14, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.komeda_improc_state* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_atomic_private_obj_init(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
