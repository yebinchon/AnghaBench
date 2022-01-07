; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_init_send_contexts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_init_send_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context_info = type { i32, i32, i64 }
%struct.hfi1_devdata = type { %struct.send_context_info*, %struct.sc_config_sizes*, %struct.send_context_info*, i32 }
%struct.sc_config_sizes = type { i32, i64 }

@TXE_NUM_CONTEXTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INVALID_SCI = common dso_local global %struct.send_context_info zeroinitializer, align 8
@SC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_send_contexts(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sc_config_sizes*, align 8
  %10 = alloca %struct.send_context_info*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %12 = call i32 @init_credit_return(%struct.hfi1_devdata* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %121

17:                                               ; preds = %1
  %18 = load i32, i32* @TXE_NUM_CONTEXTS, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.send_context_info* @kmalloc_array(i32 %18, i32 4, i32 %19)
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 2
  store %struct.send_context_info* %20, %struct.send_context_info** %22, align 8
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.send_context_info* @kcalloc(i32 %25, i32 16, i32 %26)
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %28, i32 0, i32 0
  store %struct.send_context_info* %27, %struct.send_context_info** %29, align 8
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %30, i32 0, i32 0
  %32 = load %struct.send_context_info*, %struct.send_context_info** %31, align 8
  %33 = icmp ne %struct.send_context_info* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 2
  %37 = load %struct.send_context_info*, %struct.send_context_info** %36, align 8
  %38 = icmp ne %struct.send_context_info* %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %34, %17
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %41 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %40, i32 0, i32 2
  %42 = load %struct.send_context_info*, %struct.send_context_info** %41, align 8
  %43 = call i32 @kfree(%struct.send_context_info* %42)
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %45 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %44, i32 0, i32 0
  %46 = load %struct.send_context_info*, %struct.send_context_info** %45, align 8
  %47 = call i32 @kfree(%struct.send_context_info* %46)
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %49 = call i32 @free_credit_return(%struct.hfi1_devdata* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %121

52:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @TXE_NUM_CONTEXTS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %59 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %58, i32 0, i32 2
  %60 = load %struct.send_context_info*, %struct.send_context_info** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %60, i64 %62
  %64 = bitcast %struct.send_context_info* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 bitcast (%struct.send_context_info* @INVALID_SCI to i8*), i64 16, i1 false)
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %53

68:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %117, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SC_MAX, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %120

73:                                               ; preds = %69
  %74 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %75 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %74, i32 0, i32 1
  %76 = load %struct.sc_config_sizes*, %struct.sc_config_sizes** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.sc_config_sizes, %struct.sc_config_sizes* %76, i64 %78
  store %struct.sc_config_sizes* %79, %struct.sc_config_sizes** %9, align 8
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %113, %73
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.sc_config_sizes*, %struct.sc_config_sizes** %9, align 8
  %83 = getelementptr inbounds %struct.sc_config_sizes, %struct.sc_config_sizes* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %80
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %88 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %87, i32 0, i32 0
  %89 = load %struct.send_context_info*, %struct.send_context_info** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %89, i64 %91
  store %struct.send_context_info* %92, %struct.send_context_info** %10, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.send_context_info*, %struct.send_context_info** %10, align 8
  %95 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.send_context_info*, %struct.send_context_info** %10, align 8
  %98 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.sc_config_sizes*, %struct.sc_config_sizes** %9, align 8
  %100 = getelementptr inbounds %struct.sc_config_sizes, %struct.sc_config_sizes* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.send_context_info*, %struct.send_context_info** %10, align 8
  %103 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = load %struct.sc_config_sizes*, %struct.sc_config_sizes** %9, align 8
  %107 = getelementptr inbounds %struct.sc_config_sizes, %struct.sc_config_sizes* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %86
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %80

116:                                              ; preds = %80
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %69

120:                                              ; preds = %69
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %39, %15
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @init_credit_return(%struct.hfi1_devdata*) #1

declare dso_local %struct.send_context_info* @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.send_context_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.send_context_info*) #1

declare dso_local i32 @free_credit_return(%struct.hfi1_devdata*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
