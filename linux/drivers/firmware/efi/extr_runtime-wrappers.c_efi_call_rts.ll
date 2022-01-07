; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-wrappers.c_efi_call_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-wrappers.c_efi_call_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.work_struct = type { i32 }

@EFI_NOT_FOUND = common dso_local global i32 0, align 4
@efi_rts_work = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@get_time = common dso_local global i32 0, align 4
@set_time = common dso_local global i32 0, align 4
@get_wakeup_time = common dso_local global i32 0, align 4
@set_wakeup_time = common dso_local global i32 0, align 4
@get_variable = common dso_local global i32 0, align 4
@get_next_variable = common dso_local global i32 0, align 4
@set_variable = common dso_local global i32 0, align 4
@query_variable_info = common dso_local global i32 0, align 4
@get_next_high_mono_count = common dso_local global i32 0, align 4
@update_capsule = common dso_local global i32 0, align 4
@query_capsule_caps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Requested executing invalid EFI Runtime Service.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @efi_call_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_call_rts(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %9 = load i32, i32* @EFI_NOT_FOUND, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi_rts_work, i32 0, i32 7), align 8
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi_rts_work, i32 0, i32 6), align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi_rts_work, i32 0, i32 5), align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi_rts_work, i32 0, i32 4), align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi_rts_work, i32 0, i32 3), align 8
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi_rts_work, i32 0, i32 0), align 8
  switch i32 %15, label %132 [
    i32 136, label %16
    i32 131, label %24
    i32 134, label %30
    i32 129, label %40
    i32 135, label %50
    i32 137, label %63
    i32 130, label %72
    i32 132, label %87
    i32 138, label %101
    i32 128, label %107
    i32 133, label %119
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @get_time, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = bitcast i32* %19 to i64*
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %17, i64* %20, i32* %22)
  store i32 %23, i32* %8, align 4
  br label %134

24:                                               ; preds = %1
  %25 = load i32, i32* @set_time, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = bitcast i32* %27 to i64*
  %29 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %25, i64* %28)
  store i32 %29, i32* %8, align 4
  br label %134

30:                                               ; preds = %1
  %31 = load i32, i32* @get_wakeup_time, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = bitcast i32* %33 to i64*
  %35 = load i8*, i8** %4, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %31, i64* %34, i32* %36, i32* %38)
  store i32 %39, i32* %8, align 4
  br label %134

40:                                               ; preds = %1
  %41 = load i32, i32* @set_wakeup_time, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i64*
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %41, i64* %46, i32* %48)
  store i32 %49, i32* %8, align 4
  br label %134

50:                                               ; preds = %1
  %51 = load i32, i32* @get_variable, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = bitcast i32* %53 to i64*
  %55 = load i8*, i8** %4, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i8*, i8** %5, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to i64*
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %51, i64* %54, i32* %56, i32* %58, i64* %60, i8* %61)
  store i32 %62, i32* %8, align 4
  br label %134

63:                                               ; preds = %1
  %64 = load i32, i32* @get_next_variable, align 4
  %65 = load i8*, i8** %3, align 8
  %66 = bitcast i8* %65 to i64*
  %67 = load i8*, i8** %4, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i8*, i8** %5, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %64, i64* %66, i32* %68, i32* %70)
  store i32 %71, i32* %8, align 4
  br label %134

72:                                               ; preds = %1
  %73 = load i32, i32* @set_variable, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = bitcast i32* %75 to i64*
  %77 = load i8*, i8** %4, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i8*, i8** %5, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = bitcast i8* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %73, i64* %76, i32* %78, i32 %81, i64 %84, i8* %85)
  store i32 %86, i32* %8, align 4
  br label %134

87:                                               ; preds = %1
  %88 = load i32, i32* @query_variable_info, align 4
  %89 = load i8*, i8** %3, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i64*
  %94 = load i8*, i8** %4, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load i8*, i8** %5, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = load i8*, i8** %6, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %88, i64* %93, i32* %95, i32* %97, i32* %99)
  store i32 %100, i32* %8, align 4
  br label %134

101:                                              ; preds = %1
  %102 = load i32, i32* @get_next_high_mono_count, align 4
  %103 = load i8*, i8** %3, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = bitcast i32* %104 to i64*
  %106 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %102, i64* %105)
  store i32 %106, i32* %8, align 4
  br label %134

107:                                              ; preds = %1
  %108 = load i32, i32* @update_capsule, align 4
  %109 = load i8*, i8** %3, align 8
  %110 = bitcast i8* %109 to i32**
  %111 = bitcast i32** %110 to i64*
  %112 = load i8*, i8** %4, align 8
  %113 = bitcast i8* %112 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = bitcast i8* %115 to i64*
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %108, i64* %111, i64 %114, i64 %117)
  store i32 %118, i32* %8, align 4
  br label %134

119:                                              ; preds = %1
  %120 = load i32, i32* @query_capsule_caps, align 4
  %121 = load i8*, i8** %3, align 8
  %122 = bitcast i8* %121 to i32**
  %123 = bitcast i32** %122 to i64*
  %124 = load i8*, i8** %4, align 8
  %125 = bitcast i8* %124 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = load i8*, i8** %6, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = call i32 (i32, i64*, ...) @efi_call_virt(i32 %120, i64* %123, i64 %126, i32* %128, i32* %130)
  store i32 %131, i32* %8, align 4
  br label %134

132:                                              ; preds = %1
  %133 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %119, %107, %101, %87, %72, %63, %50, %40, %30, %24, %16
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi_rts_work, i32 0, i32 2), align 8
  %136 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi_rts_work, i32 0, i32 1))
  ret void
}

declare dso_local i32 @efi_call_virt(i32, i64*, ...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
