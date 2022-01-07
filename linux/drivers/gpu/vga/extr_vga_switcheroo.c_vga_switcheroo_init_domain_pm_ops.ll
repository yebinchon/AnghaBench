; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_init_domain_pm_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_init_domain_pm_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dev_pm_domain = type { %struct.TYPE_4__ }

@vga_switcheroo_runtime_suspend = common dso_local global i32 0, align 4
@vga_switcheroo_runtime_resume = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_switcheroo_init_domain_pm_ops(%struct.device* %0, %struct.dev_pm_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dev_pm_domain*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.dev_pm_domain* %1, %struct.dev_pm_domain** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %5, align 8
  %19 = getelementptr inbounds %struct.dev_pm_domain, %struct.dev_pm_domain* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = bitcast %struct.TYPE_4__* %19 to i8*
  %26 = bitcast %struct.TYPE_4__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = load i32, i32* @vga_switcheroo_runtime_suspend, align 4
  %28 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %5, align 8
  %29 = getelementptr inbounds %struct.dev_pm_domain, %struct.dev_pm_domain* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @vga_switcheroo_runtime_resume, align 4
  %32 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %5, align 8
  %33 = getelementptr inbounds %struct.dev_pm_domain, %struct.dev_pm_domain* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %5, align 8
  %37 = call i32 @dev_pm_domain_set(%struct.device* %35, %struct.dev_pm_domain* %36)
  store i32 0, i32* %3, align 4
  br label %43

38:                                               ; preds = %10, %2
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_pm_domain_set(%struct.device* %39, %struct.dev_pm_domain* null)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_pm_domain_set(%struct.device*, %struct.dev_pm_domain*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
