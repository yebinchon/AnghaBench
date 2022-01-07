; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32 }

@M_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i32, i32)* @__dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dirty(%struct.dm_cache_metadata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_cache_metadata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %13 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %12, i32 0, i32 2
  %14 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %15 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @from_cblock(i32 %17)
  %19 = call i32 @dm_array_get_value(i32* %13, i32 %16, i32 %18, i32* %11)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %76

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @unpack_value(i32 %25, i32* %10, i32* %9)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @M_DIRTY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @M_DIRTY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %31
  store i32 0, i32* %4, align 4
  br label %76

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @M_DIRTY, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @M_DIRTY, align 4
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = or i32 %48, %55
  %57 = call i32 @pack_value(i32 %44, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = call i32 @__dm_bless_for_disk(i32* %11)
  %59 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %60 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %59, i32 0, i32 2
  %61 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %62 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @from_cblock(i32 %64)
  %66 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %67 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %66, i32 0, i32 1
  %68 = call i32 @dm_array_set_value(i32* %60, i32 %63, i32 %65, i32* %11, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %54
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %54
  %74 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %75 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %71, %42, %22
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @dm_array_get_value(i32*, i32, i32, i32*) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @unpack_value(i32, i32*, i32*) #1

declare dso_local i32 @pack_value(i32, i32) #1

declare dso_local i32 @__dm_bless_for_disk(i32*) #1

declare dso_local i32 @dm_array_set_value(i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
