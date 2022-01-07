; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_render_buff_to_mlli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_render_buff_to_mlli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@CC_MAX_MLLI_ENTRY_SIZE = common dso_local global i64 0, align 8
@MAX_NUM_OF_TOTAL_MLLI_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Too many mlli entries. current %d max %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"entry[%d]: single_buff=0x%08X size=%08X\0A\00", align 1
@LLI_WORD0_OFFSET = common dso_local global i64 0, align 8
@LLI_WORD1_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i64, i64*, i64**)* @cc_render_buff_to_mlli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_render_buff_to_mlli(%struct.device* %0, i64 %1, i64 %2, i64* %3, i64** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64** %4, i64*** %11, align 8
  %14 = load i64**, i64*** %11, align 8
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %12, align 8
  %16 = load i64*, i64** %10, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @CC_MAX_MLLI_ENTRY_SIZE, align 8
  %20 = sdiv i64 %18, %19
  %21 = add nsw i64 %17, %20
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @MAX_NUM_OF_TOTAL_MLLI_ENTRIES, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @MAX_NUM_OF_TOTAL_MLLI_ENTRIES, align 8
  %30 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %94

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @CC_MAX_MLLI_ENTRY_SIZE, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load i64*, i64** %12, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @cc_lli_set_addr(i64* %39, i64 %40)
  %42 = load i64*, i64** %12, align 8
  %43 = load i64, i64* @CC_MAX_MLLI_ENTRY_SIZE, align 8
  %44 = call i32 @cc_lli_set_size(i64* %42, i64 %43)
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %12, align 8
  %49 = load i64, i64* @LLI_WORD0_OFFSET, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* @LLI_WORD1_OFFSET, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %51, i64 %55)
  %57 = load i64, i64* @CC_MAX_MLLI_ENTRY_SIZE, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* @CC_MAX_MLLI_ENTRY_SIZE, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64*, i64** %12, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  store i64* %64, i64** %12, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %34

68:                                               ; preds = %34
  %69 = load i64*, i64** %12, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @cc_lli_set_addr(i64* %69, i64 %70)
  %72 = load i64*, i64** %12, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @cc_lli_set_size(i64* %72, i64 %73)
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = load i64, i64* @LLI_WORD0_OFFSET, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %12, align 8
  %83 = load i64, i64* @LLI_WORD1_OFFSET, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %77, i64 %81, i64 %85)
  %87 = load i64*, i64** %12, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  store i64* %88, i64** %12, align 8
  %89 = load i64*, i64** %12, align 8
  %90 = load i64**, i64*** %11, align 8
  store i64* %89, i64** %90, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %68, %26
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @cc_lli_set_addr(i64*, i64) #1

declare dso_local i32 @cc_lli_set_size(i64*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
