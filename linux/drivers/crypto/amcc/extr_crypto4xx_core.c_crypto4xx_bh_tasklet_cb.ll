; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_bh_tasklet_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_bh_tasklet_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.crypto4xx_core_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, %struct.ce_pd*, %struct.pd_uinfo* }
%struct.ce_pd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pd_uinfo = type { i32 }

@PD_ENTRY_INUSE = common dso_local global i32 0, align 4
@PD_CTL_PE_DONE = common dso_local global i32 0, align 4
@PD_CTL_HOST_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @crypto4xx_bh_tasklet_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_bh_tasklet_cb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.crypto4xx_core_device*, align 8
  %5 = alloca %struct.pd_uinfo*, align 8
  %6 = alloca %struct.ce_pd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.device*
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.crypto4xx_core_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.crypto4xx_core_device* %12, %struct.crypto4xx_core_device** %4, align 8
  %13 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %14 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %19 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %69, %1
  %24 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %25 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load %struct.pd_uinfo*, %struct.pd_uinfo** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %28, i64 %29
  store %struct.pd_uinfo* %30, %struct.pd_uinfo** %5, align 8
  %31 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %32 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.ce_pd*, %struct.ce_pd** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %35, i64 %36
  store %struct.ce_pd* %37, %struct.ce_pd** %6, align 8
  %38 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %39 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PD_ENTRY_INUSE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %23
  %45 = load %struct.ce_pd*, %struct.ce_pd** %6, align 8
  %46 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @READ_ONCE(i32 %48)
  %50 = load i32, i32* @PD_CTL_PE_DONE, align 4
  %51 = load i32, i32* @PD_CTL_HOST_READY, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = load i32, i32* @PD_CTL_PE_DONE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %44
  %57 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %58 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @crypto4xx_pd_done(%struct.TYPE_5__* %59, i64 %60)
  %62 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %63 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @crypto4xx_put_pd_to_pdr(%struct.TYPE_5__* %64, i64 %65)
  store i64 %66, i64* %7, align 8
  br label %68

67:                                               ; preds = %44, %23
  br label %73

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %23, label %73

73:                                               ; preds = %69, %67
  ret void
}

declare dso_local %struct.crypto4xx_core_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @crypto4xx_pd_done(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @crypto4xx_put_pd_to_pdr(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
