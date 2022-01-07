; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_init_gamma_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_init_gamma_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.dispc_gamma_desc }
%struct.dispc_gamma_desc = type { i32 }
%struct.dispc_device = type { i32**, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@mgr_desc = common dso_local global %struct.TYPE_6__* null, align 8
@OMAP_DSS_CHANNEL_LCD2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD3 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*)* @dispc_init_gamma_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_init_gamma_tables(%struct.dispc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dispc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dispc_gamma_desc*, align 8
  %6 = alloca i32*, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %3, align 8
  %7 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %8 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %73, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %18 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32** %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mgr_desc, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.dispc_gamma_desc* %27, %struct.dispc_gamma_desc** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %33 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %34 = call i32 @dispc_has_feature(%struct.dispc_device* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %73

37:                                               ; preds = %31, %22
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @OMAP_DSS_CHANNEL_LCD3, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %43 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %44 = call i32 @dispc_has_feature(%struct.dispc_device* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %73

47:                                               ; preds = %41, %37
  %48 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %49 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.dispc_gamma_desc*, %struct.dispc_gamma_desc** %5, align 8
  %53 = getelementptr inbounds %struct.dispc_gamma_desc, %struct.dispc_gamma_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32* @devm_kmalloc_array(i32* %51, i32 %54, i32 4, i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %77

62:                                               ; preds = %47
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %65 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* %63, i32** %69, align 8
  %70 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @dispc_mgr_set_gamma(%struct.dispc_device* %70, i32 %71, i32* null, i32 0)
  br label %73

73:                                               ; preds = %62, %46, %36
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %15

76:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %59, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32* @devm_kmalloc_array(i32*, i32, i32, i32) #1

declare dso_local i32 @dispc_mgr_set_gamma(%struct.dispc_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
