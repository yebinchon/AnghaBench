; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_client_reserve_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_client_reserve_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_kcopyd_client = type { i32 }
%struct.page_list = type { %struct.page_list* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_kcopyd_client*, i32)* @client_reserve_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_reserve_pages(%struct.dm_kcopyd_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_kcopyd_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page_list*, align 8
  %8 = alloca %struct.page_list*, align 8
  store %struct.dm_kcopyd_client* %0, %struct.dm_kcopyd_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.page_list* null, %struct.page_list** %7, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.page_list* @alloc_pl(i32 %14)
  store %struct.page_list* %15, %struct.page_list** %8, align 8
  %16 = load %struct.page_list*, %struct.page_list** %8, align 8
  %17 = icmp ne %struct.page_list* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load %struct.page_list*, %struct.page_list** %7, align 8
  %20 = icmp ne %struct.page_list* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.page_list*, %struct.page_list** %7, align 8
  %23 = call i32 @drop_pages(%struct.page_list* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %44

27:                                               ; preds = %13
  %28 = load %struct.page_list*, %struct.page_list** %7, align 8
  %29 = load %struct.page_list*, %struct.page_list** %8, align 8
  %30 = getelementptr inbounds %struct.page_list, %struct.page_list* %29, i32 0, i32 0
  store %struct.page_list* %28, %struct.page_list** %30, align 8
  %31 = load %struct.page_list*, %struct.page_list** %8, align 8
  store %struct.page_list* %31, %struct.page_list** %7, align 8
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %4, align 8
  %38 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %4, align 8
  %42 = load %struct.page_list*, %struct.page_list** %7, align 8
  %43 = call i32 @kcopyd_put_pages(%struct.dm_kcopyd_client* %41, %struct.page_list* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.page_list* @alloc_pl(i32) #1

declare dso_local i32 @drop_pages(%struct.page_list*) #1

declare dso_local i32 @kcopyd_put_pages(%struct.dm_kcopyd_client*, %struct.page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
