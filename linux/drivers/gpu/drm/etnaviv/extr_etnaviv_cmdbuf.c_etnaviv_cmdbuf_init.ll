; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_cmdbuf_suballoc = type { i64, i32, i32, i64, i32, i32 }
%struct.etnaviv_cmdbuf = type { i32, i64, i32, %struct.etnaviv_cmdbuf_suballoc* }

@SUBALLOC_GRANULE = common dso_local global i32 0, align 4
@SUBALLOC_GRANULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timeout waiting for cmdbuf space\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_cmdbuf_init(%struct.etnaviv_cmdbuf_suballoc* %0, %struct.etnaviv_cmdbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_cmdbuf_suballoc*, align 8
  %6 = alloca %struct.etnaviv_cmdbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.etnaviv_cmdbuf_suballoc* %0, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  store %struct.etnaviv_cmdbuf* %1, %struct.etnaviv_cmdbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %12 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %6, align 8
  %13 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %12, i32 0, i32 3
  store %struct.etnaviv_cmdbuf_suballoc* %11, %struct.etnaviv_cmdbuf_suballoc** %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %6, align 8
  %16 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SUBALLOC_GRANULE, align 4
  %19 = call i32 @ALIGN(i32 %17, i32 %18)
  %20 = load i32, i32* @SUBALLOC_GRANULE, align 4
  %21 = sdiv i32 %19, %20
  %22 = call i32 @order_base_2(i32 %21)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %58, %3
  %24 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %25 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %28 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SUBALLOC_GRANULES, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @bitmap_find_free_region(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %23
  %36 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %37 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %39 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %42 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %45 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @msecs_to_jiffies(i32 10000)
  %48 = call i32 @wait_event_interruptible_timeout(i32 %43, i64 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %35
  %52 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %53 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %78

58:                                               ; preds = %35
  br label %23

59:                                               ; preds = %23
  %60 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %61 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @SUBALLOC_GRANULE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %6, align 8
  %67 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %69 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %6, align 8
  %72 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  %76 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %6, align 8
  %77 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %59, %51
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
