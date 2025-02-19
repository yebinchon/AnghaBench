; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_id_table.c_c4iw_id_table_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_id_table.c_c4iw_id_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_id_table = type { i32, i32, i32, i32, i32, i32 }

@C4IW_ID_TABLE_F_RANDOM = common dso_local global i32 0, align 4
@RANDOM_SKIP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@C4IW_ID_TABLE_F_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_id_table_alloc(%struct.c4iw_id_table* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.c4iw_id_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.c4iw_id_table* %0, %struct.c4iw_id_table** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %15 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %18 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @C4IW_ID_TABLE_F_RANDOM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = call i32 (...) @prandom_u32()
  %25 = load i32, i32* @RANDOM_SKIP, align 4
  %26 = srem i32 %24, %25
  %27 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %28 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %32

29:                                               ; preds = %5
  %30 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %31 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %35 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %37 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %36, i32 0, i32 5
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @BITS_TO_LONGS(i32 %39)
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @kmalloc_array(i32 %40, i32 8, i32 %41)
  %43 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %44 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %46 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %80

52:                                               ; preds = %32
  %53 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %54 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @bitmap_zero(i32 %55, i32 %56)
  %58 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %59 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @C4IW_ID_TABLE_F_EMPTY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %7, align 8
  %72 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @set_bit(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %65

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %52
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %49
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
