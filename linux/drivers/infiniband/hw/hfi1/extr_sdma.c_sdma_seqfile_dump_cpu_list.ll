; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_seqfile_dump_cpu_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_seqfile_dump_cpu_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hfi1_devdata = type { i32 }
%struct.sdma_rht_node = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@sdma_rht_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cpu%3lu: \00", align 1
@HFI1_MAX_VLS_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" vl%d: [\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" sdma%2d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdma_seqfile_dump_cpu_list(%struct.seq_file* %0, %struct.hfi1_devdata* %1, i64 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sdma_rht_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.hfi1_devdata* %1, %struct.hfi1_devdata** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @sdma_rht_params, align 4
  %14 = call %struct.sdma_rht_node* @rhashtable_lookup_fast(i32 %12, i64* %6, i32 %13)
  store %struct.sdma_rht_node* %14, %struct.sdma_rht_node** %7, align 8
  %15 = load %struct.sdma_rht_node*, %struct.sdma_rht_node** %7, align 8
  %16 = icmp ne %struct.sdma_rht_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %116

18:                                               ; preds = %3
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %110, %18
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @HFI1_MAX_VLS_SUPPORTED, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %113

27:                                               ; preds = %23
  %28 = load %struct.sdma_rht_node*, %struct.sdma_rht_node** %7, align 8
  %29 = getelementptr inbounds %struct.sdma_rht_node, %struct.sdma_rht_node* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.sdma_rht_node*, %struct.sdma_rht_node** %7, align 8
  %38 = getelementptr inbounds %struct.sdma_rht_node, %struct.sdma_rht_node* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36, %27
  br label %110

48:                                               ; preds = %36
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %104, %48
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.sdma_rht_node*, %struct.sdma_rht_node** %7, align 8
  %55 = getelementptr inbounds %struct.sdma_rht_node, %struct.sdma_rht_node* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %53, %62
  br i1 %63, label %64, label %107

64:                                               ; preds = %52
  %65 = load %struct.sdma_rht_node*, %struct.sdma_rht_node** %7, align 8
  %66 = getelementptr inbounds %struct.sdma_rht_node, %struct.sdma_rht_node* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %67, i64 %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %73, i64 %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = icmp ne %struct.TYPE_3__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %64
  br label %104

80:                                               ; preds = %64
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = call i32 @seq_puts(%struct.seq_file* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %88 = load %struct.sdma_rht_node*, %struct.sdma_rht_node** %7, align 8
  %89 = getelementptr inbounds %struct.sdma_rht_node, %struct.sdma_rht_node* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %90, i64 %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %96, i64 %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %86, %79
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %52

107:                                              ; preds = %52
  %108 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %109 = call i32 @seq_puts(%struct.seq_file* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %47
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %23

113:                                              ; preds = %23
  %114 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %115 = call i32 @seq_puts(%struct.seq_file* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %17
  ret void
}

declare dso_local %struct.sdma_rht_node* @rhashtable_lookup_fast(i32, i64*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
