; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_drm_irq_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_drm_irq_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, %struct.TYPE_2__*, i64, i64*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32, i32, %struct.drm_device*)*, i32 (i32)*, i32 (i32, i32)*, i32 (i32)*, i64 (i32, i32)* }

@DISPC_IRQ_OCP_ERR = common dso_local global i64 0, align 8
@omap_underflow_irqs = common dso_local global i64* null, align 8
@omap_irq_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_drm_irq_install(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.omap_drm_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.omap_drm_private*, %struct.omap_drm_private** %10, align 8
  store %struct.omap_drm_private* %11, %struct.omap_drm_private** %4, align 8
  %12 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %13 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %18 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %22 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %21, i32 0, i32 5
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %25 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %24, i32 0, i32 4
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i64, i64* @DISPC_IRQ_OCP_ERR, align 8
  %28 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %29 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %31 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %30, i32 0, i32 3
  %32 = load i64*, i64** %31, align 8
  %33 = call i32 @ARRAY_SIZE(i64* %32)
  %34 = load i64*, i64** @omap_underflow_irqs, align 8
  %35 = call i32 @ARRAY_SIZE(i64* %34)
  %36 = call i32 @min(i32 %33, i32 %35)
  store i32 %36, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %61, %1
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %43 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load i64*, i64** @omap_underflow_irqs, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %57 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %50, %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %37

64:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %71 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 5
  %74 = load i64 (i32, i32)*, i64 (i32, i32)** %73, align 8
  %75 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %76 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i64 %74(i32 %77, i32 %78)
  %80 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %81 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %65

87:                                               ; preds = %65
  %88 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %89 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = load i32 (i32)*, i32 (i32)** %91, align 8
  %93 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %94 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %92(i32 %95)
  %97 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %98 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32 (i32, i32)*, i32 (i32, i32)** %100, align 8
  %102 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %103 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %101(i32 %104, i32 -1)
  %106 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %107 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32 (i32)*, i32 (i32)** %109, align 8
  %111 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %112 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 %110(i32 %113)
  %115 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %116 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32 (i32, i32, %struct.drm_device*)*, i32 (i32, i32, %struct.drm_device*)** %118, align 8
  %120 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %121 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @omap_irq_handler, align 4
  %124 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %125 = call i32 %119(i32 %122, i32 %123, %struct.drm_device* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %87
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %133

130:                                              ; preds = %87
  %131 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %132 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %130, %128
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
