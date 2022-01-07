; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_alloc_page_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_alloc_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_list = type { %struct.page_list*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page_list* (i32)* @dm_integrity_alloc_page_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page_list* @dm_integrity_alloc_page_list(i32 %0) #0 {
  %2 = alloca %struct.page_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page_list*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = add i32 %6, 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @__GFP_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.page_list* @kvmalloc_array(i32 %7, i32 16, i32 %10)
  store %struct.page_list* %11, %struct.page_list** %4, align 8
  %12 = load %struct.page_list*, %struct.page_list** %4, align 8
  %13 = icmp ne %struct.page_list* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.page_list* null, %struct.page_list** %2, align 8
  br label %68

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @alloc_page(i32 %21)
  %23 = load %struct.page_list*, %struct.page_list** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.page_list, %struct.page_list* %23, i64 %25
  %27 = getelementptr inbounds %struct.page_list, %struct.page_list* %26, i32 0, i32 1
  store i32* %22, i32** %27, align 8
  %28 = load %struct.page_list*, %struct.page_list** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.page_list, %struct.page_list* %28, i64 %30
  %32 = getelementptr inbounds %struct.page_list, %struct.page_list* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load %struct.page_list*, %struct.page_list** %4, align 8
  %37 = call i32 @dm_integrity_free_page_list(%struct.page_list* %36)
  store %struct.page_list* null, %struct.page_list** %2, align 8
  br label %68

38:                                               ; preds = %20
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.page_list*, %struct.page_list** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.page_list, %struct.page_list* %42, i64 %44
  %46 = load %struct.page_list*, %struct.page_list** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.page_list, %struct.page_list* %46, i64 %49
  %51 = getelementptr inbounds %struct.page_list, %struct.page_list* %50, i32 0, i32 0
  store %struct.page_list* %45, %struct.page_list** %51, align 8
  br label %52

52:                                               ; preds = %41, %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %16

56:                                               ; preds = %16
  %57 = load %struct.page_list*, %struct.page_list** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.page_list, %struct.page_list* %57, i64 %59
  %61 = getelementptr inbounds %struct.page_list, %struct.page_list* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.page_list*, %struct.page_list** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.page_list, %struct.page_list* %62, i64 %64
  %66 = getelementptr inbounds %struct.page_list, %struct.page_list* %65, i32 0, i32 0
  store %struct.page_list* null, %struct.page_list** %66, align 8
  %67 = load %struct.page_list*, %struct.page_list** %4, align 8
  store %struct.page_list* %67, %struct.page_list** %2, align 8
  br label %68

68:                                               ; preds = %56, %35, %14
  %69 = load %struct.page_list*, %struct.page_list** %2, align 8
  ret %struct.page_list* %69
}

declare dso_local %struct.page_list* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i32 @dm_integrity_free_page_list(%struct.page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
