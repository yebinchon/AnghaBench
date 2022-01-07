; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/psci/extr_psci_checker.c_alloc_init_cpu_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/psci/extr_psci_checker.c_alloc_init_cpu_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nb_available_cpus = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global %struct.cpumask* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @alloc_init_cpu_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_init_cpu_groups(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cpumask*, align 8
  store i32** %0, i32*** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @alloc_cpumask_var(i32* %5, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %67

14:                                               ; preds = %1
  %15 = load i32, i32* @nb_available_cpus, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kcalloc(i32 %15, i32 8, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %67

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  %26 = call i32 @cpumask_copy(i32 %24, %struct.cpumask* %25)
  br label %27

27:                                               ; preds = %48, %23
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @cpumask_empty(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %61

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @cpumask_any(i32 %33)
  %35 = call %struct.cpumask* @topology_core_cpumask(i32 %34)
  store %struct.cpumask* %35, %struct.cpumask** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @alloc_cpumask_var(i32* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @free_cpu_groups(i32 %44, i32** %6)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %67

48:                                               ; preds = %32
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %56 = call i32 @cpumask_copy(i32 %54, %struct.cpumask* %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %60 = call i32 @cpumask_andnot(i32 %57, i32 %58, %struct.cpumask* %59)
  br label %27

61:                                               ; preds = %27
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @free_cpumask_var(i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32**, i32*** %3, align 8
  store i32* %64, i32** %65, align 8
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %43, %20, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @cpumask_copy(i32, %struct.cpumask*) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local %struct.cpumask* @topology_core_cpumask(i32) #1

declare dso_local i32 @cpumask_any(i32) #1

declare dso_local i32 @free_cpu_groups(i32, i32**) #1

declare dso_local i32 @cpumask_andnot(i32, i32, %struct.cpumask*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
