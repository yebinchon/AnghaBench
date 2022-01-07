; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_populate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_populate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_sg_table = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@SZ_1M = common dso_local global i64 0, align 8
@CATU_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"[table %5ld:%03d] 0x%llx\0A\00", align 1
@CATU_PAGES_PER_SYSPAGE = common dso_local global i32 0, align 4
@CATU_PTRS_PER_PAGE = common dso_local global i32 0, align 4
@CATU_LINK_PREV = common dso_local global i64 0, align 8
@CATU_LINK_NEXT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"[table%5ld]: Cur: 0x%llx Prev: 0x%llx, Next: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmc_sg_table*)* @catu_populate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catu_populate_table(%struct.tmc_sg_table* %0) #0 {
  %2 = alloca %struct.tmc_sg_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.tmc_sg_table* %0, %struct.tmc_sg_table** %2, align 8
  %15 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %2, align 8
  %16 = call i64 @tmc_sg_table_buf_size(%struct.tmc_sg_table* %15)
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %17 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %2, align 8
  %18 = call i32* @catu_get_table(%struct.tmc_sg_table* %17, i64 0, i32* %12)
  store i32* %18, i32** %13, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %134, %1
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %135

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @SZ_1M, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @SZ_1M, align 8
  %32 = add i64 %30, %31
  br label %35

33:                                               ; preds = %23
  %34 = load i64, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i64 [ %32, %29 ], [ %34, %33 ]
  store i64 %36, i64* %8, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %81, %35
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %37
  %42 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %2, align 8
  %43 = getelementptr inbounds %struct.tmc_sg_table, %struct.tmc_sg_table* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @CATU_PAGE_SIZE, align 8
  %54 = mul i64 %52, %53
  %55 = add i64 %50, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %2, align 8
  %58 = getelementptr inbounds %struct.tmc_sg_table, %struct.tmc_sg_table* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = lshr i64 %60, 20
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i8*, i64, i32, i32, ...) @catu_dbg(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @catu_make_entry(i32 %65)
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* @CATU_PAGES_PER_SYSPAGE, align 4
  %74 = srem i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %41
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %41
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  %84 = load i64, i64* @CATU_PAGE_SIZE, align 8
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %6, align 8
  br label %37

87:                                               ; preds = %37
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* @CATU_PTRS_PER_PAGE, align 4
  %97 = load i32, i32* %3, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memset(i32* %95, i32 0, i32 %101)
  store i32 0, i32* %11, align 4
  br label %107

103:                                              ; preds = %87
  %104 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %2, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32* @catu_get_table(%struct.tmc_sg_table* %104, i64 %105, i32* %11)
  store i32* %106, i32** %14, align 8
  br label %107

107:                                              ; preds = %103, %91
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @catu_make_entry(i32 %108)
  %110 = load i32*, i32** %13, align 8
  %111 = load i64, i64* @CATU_LINK_PREV, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @catu_make_entry(i32 %113)
  %115 = load i32*, i32** %13, align 8
  %116 = load i64, i64* @CATU_LINK_NEXT, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %2, align 8
  %119 = getelementptr inbounds %struct.tmc_sg_table, %struct.tmc_sg_table* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = lshr i64 %121, 20
  %123 = sub i64 %122, 1
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (i32, i8*, i64, i32, i32, ...) @catu_dbg(i32 %120, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %107
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %12, align 4
  %133 = load i32*, i32** %14, align 8
  store i32* %133, i32** %13, align 8
  br label %134

134:                                              ; preds = %130, %107
  br label %19

135:                                              ; preds = %19
  %136 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %2, align 8
  %137 = call i32 @tmc_sg_table_sync_table(%struct.tmc_sg_table* %136)
  ret void
}

declare dso_local i64 @tmc_sg_table_buf_size(%struct.tmc_sg_table*) #1

declare dso_local i32* @catu_get_table(%struct.tmc_sg_table*, i64, i32*) #1

declare dso_local i32 @catu_dbg(i32, i8*, i64, i32, i32, ...) #1

declare dso_local i32 @catu_make_entry(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tmc_sg_table_sync_table(%struct.tmc_sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
