; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_passdown_double_checking_shared_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_passdown_double_checking_shared_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_new_mapping = type { i64, i64, i64, %struct.thin_c* }
%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i32 }
%struct.bio = type { i32 }
%struct.discard_op = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_new_mapping*, %struct.bio*)* @passdown_double_checking_shared_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @passdown_double_checking_shared_status(%struct.dm_thin_new_mapping* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_thin_new_mapping*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.thin_c*, align 8
  %8 = alloca %struct.pool*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.discard_op, align 4
  store %struct.dm_thin_new_mapping* %0, %struct.dm_thin_new_mapping** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %13 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %3, align 8
  %14 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %13, i32 0, i32 3
  %15 = load %struct.thin_c*, %struct.thin_c** %14, align 8
  store %struct.thin_c* %15, %struct.thin_c** %7, align 8
  %16 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  %17 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %16, i32 0, i32 0
  %18 = load %struct.pool*, %struct.pool** %17, align 8
  store %struct.pool* %18, %struct.pool** %8, align 8
  %19 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %3, align 8
  %20 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %3, align 8
  %23 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %3, align 8
  %26 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %3, align 8
  %30 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %11, align 8
  %33 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = call i32 @begin_discard(%struct.discard_op* %12, %struct.thin_c* %33, %struct.bio* %34)
  br label %36

36:                                               ; preds = %98, %2
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %100

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %59, %40
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.pool*, %struct.pool** %8, align 8
  %47 = getelementptr inbounds %struct.pool, %struct.pool* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @dm_pool_block_is_shared(i32 %48, i64 %49, i32* %6)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %101

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %62

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %41

62:                                               ; preds = %57, %41
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %100

67:                                               ; preds = %62
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %88, %67
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load %struct.pool*, %struct.pool** %8, align 8
  %76 = getelementptr inbounds %struct.pool, %struct.pool* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @dm_pool_block_is_shared(i32 %77, i64 %78, i32* %6)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %101

83:                                               ; preds = %74
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %91

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %10, align 8
  br label %70

91:                                               ; preds = %86, %70
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @issue_discard(%struct.discard_op* %12, i64 %92, i64 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %101

98:                                               ; preds = %91
  %99 = load i64, i64* %10, align 8
  store i64 %99, i64* %9, align 8
  br label %36

100:                                              ; preds = %66, %36
  br label %101

101:                                              ; preds = %100, %97, %82, %53
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @end_discard(%struct.discard_op* %12, i32 %102)
  ret void
}

declare dso_local i32 @begin_discard(%struct.discard_op*, %struct.thin_c*, %struct.bio*) #1

declare dso_local i32 @dm_pool_block_is_shared(i32, i64, i32*) #1

declare dso_local i32 @issue_discard(%struct.discard_op*, i64, i64) #1

declare dso_local i32 @end_discard(%struct.discard_op*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
