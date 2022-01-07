; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_alloc_res_chunk_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_alloc_res_chunk_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_vnic_res_chunk = type { i32 }
%struct.usnic_vnic = type { i32 }
%struct.usnic_vnic_res_spec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@USNIC_VNIC_RES_TYPE_EOL = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to get %s from %s with err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usnic_vnic_res_chunk** (%struct.usnic_vnic*, %struct.usnic_vnic_res_spec*, i8*)* @alloc_res_chunk_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usnic_vnic_res_chunk** @alloc_res_chunk_list(%struct.usnic_vnic* %0, %struct.usnic_vnic_res_spec* %1, i8* %2) #0 {
  %4 = alloca %struct.usnic_vnic_res_chunk**, align 8
  %5 = alloca %struct.usnic_vnic*, align 8
  %6 = alloca %struct.usnic_vnic_res_spec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usnic_vnic_res_chunk**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usnic_vnic* %0, %struct.usnic_vnic** %5, align 8
  store %struct.usnic_vnic_res_spec* %1, %struct.usnic_vnic_res_spec** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %26, %3
  %15 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %6, align 8
  %16 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %13, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USNIC_VNIC_RES_TYPE_EOL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.usnic_vnic_res_chunk** @kcalloc(i32 %31, i32 8, i32 %32)
  store %struct.usnic_vnic_res_chunk** %33, %struct.usnic_vnic_res_chunk*** %9, align 8
  %34 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %9, align 8
  %35 = icmp ne %struct.usnic_vnic_res_chunk** %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.usnic_vnic_res_chunk** @ERR_PTR(i32 %38)
  store %struct.usnic_vnic_res_chunk** %39, %struct.usnic_vnic_res_chunk*** %4, align 8
  br label %138

40:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %112, %40
  %42 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %6, align 8
  %43 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USNIC_VNIC_RES_TYPE_EOL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %115

52:                                               ; preds = %41
  %53 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %6, align 8
  %54 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %6, align 8
  %63 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %12, align 4
  %70 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = call %struct.usnic_vnic_res_chunk* @usnic_vnic_get_resources(%struct.usnic_vnic* %70, i32 %71, i32 %72, i8* %73)
  %75 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %75, i64 %77
  store %struct.usnic_vnic_res_chunk* %74, %struct.usnic_vnic_res_chunk** %78, align 8
  %79 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %79, i64 %81
  %83 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %82, align 8
  %84 = call i64 @IS_ERR_OR_NULL(%struct.usnic_vnic_res_chunk* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %52
  %87 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %87, i64 %89
  %91 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %90, align 8
  %92 = icmp ne %struct.usnic_vnic_res_chunk* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %9, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %94, i64 %96
  %98 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %97, align 8
  %99 = call i32 @PTR_ERR(%struct.usnic_vnic_res_chunk* %98)
  br label %103

100:                                              ; preds = %86
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  br label %103

103:                                              ; preds = %100, %93
  %104 = phi i32 [ %99, %93 ], [ %102, %100 ]
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @usnic_vnic_res_type_to_str(i32 %105)
  %107 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %108 = call i32 @usnic_vnic_pci_name(%struct.usnic_vnic* %107)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @usnic_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %108, i32 %109)
  br label %117

111:                                              ; preds = %52
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %41

115:                                              ; preds = %41
  %116 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %9, align 8
  store %struct.usnic_vnic_res_chunk** %116, %struct.usnic_vnic_res_chunk*** %4, align 8
  br label %138

117:                                              ; preds = %103
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %130, %117
  %121 = load i32, i32* %11, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %9, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %124, i64 %126
  %128 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %127, align 8
  %129 = call i32 @usnic_vnic_put_resources(%struct.usnic_vnic_res_chunk* %128)
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %11, align 4
  br label %120

133:                                              ; preds = %120
  %134 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %9, align 8
  %135 = call i32 @kfree(%struct.usnic_vnic_res_chunk** %134)
  %136 = load i32, i32* %10, align 4
  %137 = call %struct.usnic_vnic_res_chunk** @ERR_PTR(i32 %136)
  store %struct.usnic_vnic_res_chunk** %137, %struct.usnic_vnic_res_chunk*** %4, align 8
  br label %138

138:                                              ; preds = %133, %115, %36
  %139 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %4, align 8
  ret %struct.usnic_vnic_res_chunk** %139
}

declare dso_local %struct.usnic_vnic_res_chunk** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.usnic_vnic_res_chunk** @ERR_PTR(i32) #1

declare dso_local %struct.usnic_vnic_res_chunk* @usnic_vnic_get_resources(%struct.usnic_vnic*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.usnic_vnic_res_chunk*) #1

declare dso_local i32 @PTR_ERR(%struct.usnic_vnic_res_chunk*) #1

declare dso_local i32 @usnic_err(i8*, i32, i32, i32) #1

declare dso_local i32 @usnic_vnic_res_type_to_str(i32) #1

declare dso_local i32 @usnic_vnic_pci_name(%struct.usnic_vnic*) #1

declare dso_local i32 @usnic_vnic_put_resources(%struct.usnic_vnic_res_chunk*) #1

declare dso_local i32 @kfree(%struct.usnic_vnic_res_chunk**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
