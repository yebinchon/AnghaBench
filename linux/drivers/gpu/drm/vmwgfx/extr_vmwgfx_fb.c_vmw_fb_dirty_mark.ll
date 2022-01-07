; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_dirty_mark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_dirty_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fb_par = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@VMW_DIRTY_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_fb_par*, i32, i32, i32, i32)* @vmw_fb_dirty_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_fb_dirty_mark(%struct.vmw_fb_par* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vmw_fb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmw_fb_par* %0, %struct.vmw_fb_par** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %10, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %21 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %26 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %30 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %5
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %37 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %41 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %45 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %49 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %52 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %34
  %57 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %58 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %57, i32 0, i32 1
  %59 = load i32, i32* @VMW_DIRTY_DELAY, align 4
  %60 = call i32 @schedule_delayed_work(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %34
  br label %111

62:                                               ; preds = %5
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %65 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %63, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %72 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %77 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %75, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %84 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 8
  br label %86

86:                                               ; preds = %81, %74
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %89 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ugt i32 %87, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %96 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %86
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %101 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ugt i32 %99, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %108 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %98
  br label %111

111:                                              ; preds = %110, %61
  %112 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %113 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
