; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___load_bitset_in_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___load_bitset_in_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, i32, i32 }
%struct.dm_bitset_cursor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_clone_metadata*)* @__load_bitset_in_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__load_bitset_in_core(%struct.dm_clone_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_clone_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.dm_bitset_cursor, align 4
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %3, align 8
  %7 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %8 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %7, i32 0, i32 3
  %9 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %10 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %13 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %12, i32 0, i32 2
  %14 = call i32 @dm_bitset_flush(i32* %8, i32 %11, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %21 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %20, i32 0, i32 3
  %22 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %26 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dm_bitset_cursor_begin(i32* %21, i32 %24, i32 %27, %struct.dm_bitset_cursor* %6)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %64, %33
  %35 = call i64 @dm_bitset_cursor_get_value(%struct.dm_bitset_cursor* %6)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %40 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__set_bit(i64 %38, i32 %41)
  br label %49

43:                                               ; preds = %34
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %46 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__clear_bit(i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %52 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %67

58:                                               ; preds = %49
  %59 = call i32 @dm_bitset_cursor_next(%struct.dm_bitset_cursor* %6)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %67

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %34

67:                                               ; preds = %62, %57
  %68 = call i32 @dm_bitset_cursor_end(%struct.dm_bitset_cursor* %6)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %31, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @dm_bitset_flush(i32*, i32, i32*) #1

declare dso_local i32 @dm_bitset_cursor_begin(i32*, i32, i32, %struct.dm_bitset_cursor*) #1

declare dso_local i64 @dm_bitset_cursor_get_value(%struct.dm_bitset_cursor*) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @dm_bitset_cursor_next(%struct.dm_bitset_cursor*) #1

declare dso_local i32 @dm_bitset_cursor_end(%struct.dm_bitset_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
