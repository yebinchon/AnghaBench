; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_kcopyd_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_kcopyd_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_kcopyd_client = type { i32, %struct.page_list* }
%struct.page_list = type { %struct.page_list* }

@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_KSWAPD_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_kcopyd_client*, i32, %struct.page_list**)* @kcopyd_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcopyd_get_pages(%struct.dm_kcopyd_client* %0, i32 %1, %struct.page_list** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_kcopyd_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page_list**, align 8
  %8 = alloca %struct.page_list*, align 8
  store %struct.dm_kcopyd_client* %0, %struct.dm_kcopyd_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.page_list** %2, %struct.page_list*** %7, align 8
  %9 = load %struct.page_list**, %struct.page_list*** %7, align 8
  store %struct.page_list* null, %struct.page_list** %9, align 8
  br label %10

10:                                               ; preds = %51, %3
  %11 = load i32, i32* @__GFP_NOWARN, align 4
  %12 = load i32, i32* @__GFP_NORETRY, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @__GFP_KSWAPD_RECLAIM, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.page_list* @alloc_pl(i32 %15)
  store %struct.page_list* %16, %struct.page_list** %8, align 8
  %17 = load %struct.page_list*, %struct.page_list** %8, align 8
  %18 = icmp ne %struct.page_list* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %10
  %24 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %25 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %24, i32 0, i32 1
  %26 = load %struct.page_list*, %struct.page_list** %25, align 8
  store %struct.page_list* %26, %struct.page_list** %8, align 8
  %27 = load %struct.page_list*, %struct.page_list** %8, align 8
  %28 = icmp ne %struct.page_list* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %56

34:                                               ; preds = %23
  %35 = load %struct.page_list*, %struct.page_list** %8, align 8
  %36 = getelementptr inbounds %struct.page_list, %struct.page_list* %35, i32 0, i32 0
  %37 = load %struct.page_list*, %struct.page_list** %36, align 8
  %38 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %39 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %38, i32 0, i32 1
  store %struct.page_list* %37, %struct.page_list** %39, align 8
  %40 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %41 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %34, %10
  %45 = load %struct.page_list**, %struct.page_list*** %7, align 8
  %46 = load %struct.page_list*, %struct.page_list** %45, align 8
  %47 = load %struct.page_list*, %struct.page_list** %8, align 8
  %48 = getelementptr inbounds %struct.page_list, %struct.page_list* %47, i32 0, i32 0
  store %struct.page_list* %46, %struct.page_list** %48, align 8
  %49 = load %struct.page_list*, %struct.page_list** %8, align 8
  %50 = load %struct.page_list**, %struct.page_list*** %7, align 8
  store %struct.page_list* %49, %struct.page_list** %50, align 8
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %10, label %55

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %68

56:                                               ; preds = %33
  %57 = load %struct.page_list**, %struct.page_list*** %7, align 8
  %58 = load %struct.page_list*, %struct.page_list** %57, align 8
  %59 = icmp ne %struct.page_list* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %62 = load %struct.page_list**, %struct.page_list*** %7, align 8
  %63 = load %struct.page_list*, %struct.page_list** %62, align 8
  %64 = call i32 @kcopyd_put_pages(%struct.dm_kcopyd_client* %61, %struct.page_list* %63)
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %55
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.page_list* @alloc_pl(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kcopyd_put_pages(%struct.dm_kcopyd_client*, %struct.page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
