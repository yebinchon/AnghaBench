; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/psci/extr_psci_checker.c_hotplug_tests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/psci/extr_psci_checker.c_hotplug_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Trying to turn off and on again all CPUs\0A\00", align 1
@cpu_online_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Trying to turn off and on again group %d (CPUs %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hotplug_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotplug_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @alloc_cpumask_var(i32* %5, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %1, align 4
  br label %82

16:                                               ; preds = %0
  %17 = call i32 @alloc_init_cpu_groups(i32** %6)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %78

21:                                               ; preds = %16
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @__get_free_page(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %75

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  %29 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @cpu_online_mask, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @down_and_up_cpus(i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %68, %28
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpumap_print_to_pagebuf(i32 1, i8* %42, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* %2, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @down_and_up_cpus(i32 %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %41
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %2, align 4
  br label %37

71:                                               ; preds = %37
  %72 = load i8*, i8** %7, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = call i32 @free_page(i64 %73)
  br label %75

75:                                               ; preds = %71, %27
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @free_cpu_groups(i32 %76, i32** %6)
  br label %78

78:                                               ; preds = %75, %20
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @free_cpumask_var(i32 %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %78, %14
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @alloc_init_cpu_groups(i32**) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @down_and_up_cpus(i32, i32) #1

declare dso_local i32 @cpumap_print_to_pagebuf(i32, i8*, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @free_cpu_groups(i32, i32**) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
