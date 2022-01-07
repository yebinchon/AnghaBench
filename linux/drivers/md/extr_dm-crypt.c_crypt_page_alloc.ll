; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_page_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_page_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32 }
%struct.page = type opaque

@dm_crypt_pages_per_client = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @crypt_page_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @crypt_page_alloc(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.crypt_config*, align 8
  %7 = alloca %struct.page*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.crypt_config*
  store %struct.crypt_config* %9, %struct.crypt_config** %6, align 8
  %10 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %11 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %10, i32 0, i32 0
  %12 = load i32, i32* @dm_crypt_pages_per_client, align 4
  %13 = call i64 @percpu_counter_compare(i32* %11, i32 %12)
  %14 = icmp sge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @__GFP_NORETRY, align 4
  %21 = and i32 %19, %20
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i8* null, i8** %3, align 8
  br label %41

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @alloc_page(i32 %26)
  %28 = bitcast i8* %27 to %struct.page*
  store %struct.page* %28, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = icmp ne %struct.page* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %36 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %35, i32 0, i32 0
  %37 = call i32 @percpu_counter_add(i32* %36, i32 1)
  br label %38

38:                                               ; preds = %34, %25
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = bitcast %struct.page* %39 to i8*
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %38, %24
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @percpu_counter_compare(i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @alloc_page(i32) #1

declare dso_local i32 @percpu_counter_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
