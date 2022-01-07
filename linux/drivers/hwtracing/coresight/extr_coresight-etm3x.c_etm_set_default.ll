; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_set_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etm_config = type { i32, i32*, i32*, i32, i32, i32*, i32, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@ETM_HARD_WIRE_RES_A = common dso_local global i8* null, align 8
@ETM_DEFAULT_EVENT_VAL = common dso_local global i8* null, align 8
@ETM_MAX_CNTR = common dso_local global i32 0, align 4
@ETM_MAX_CTXID_CMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etm_set_default(%struct.etm_config* %0) #0 {
  %2 = alloca %struct.etm_config*, align 8
  %3 = alloca i32, align 4
  store %struct.etm_config* %0, %struct.etm_config** %2, align 8
  %4 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %5 = icmp ne %struct.etm_config* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON_ONCE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %105

11:                                               ; preds = %1
  %12 = call i32 @BIT(i32 24)
  %13 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %14 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %13, i32 0, i32 19
  store i32 %12, i32* %14, align 8
  %15 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %16 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i8*, i8** @ETM_HARD_WIRE_RES_A, align 8
  %18 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %19 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %18, i32 0, i32 17
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %21 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %22 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %21, i32 0, i32 18
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @ETM_HARD_WIRE_RES_A, align 8
  %24 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %25 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %24, i32 0, i32 17
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %27 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %28 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %27, i32 0, i32 16
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %30 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %31 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %30, i32 0, i32 15
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %33 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %34 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %33, i32 0, i32 14
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %36 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %37 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %36, i32 0, i32 13
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %39 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %40 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %39, i32 0, i32 12
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %42 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %43 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %42, i32 0, i32 11
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %45 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %46 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %78, %11
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @ETM_MAX_CNTR, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %47
  %52 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %53 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 0, i32* %57, align 4
  %58 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %59 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %60 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %59, i32 0, i32 9
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  %65 = load i8*, i8** @ETM_DEFAULT_EVENT_VAL, align 8
  %66 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %67 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %66, i32 0, i32 8
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %65, i8** %71, align 8
  %72 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %73 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %51
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %47

81:                                               ; preds = %47
  %82 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %83 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %82, i32 0, i32 3
  store i32 0, i32* %83, align 8
  %84 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %85 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %84, i32 0, i32 4
  store i32 0, i32* %85, align 4
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %97, %81
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @ETM_MAX_CTXID_CMP, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %92 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %86

100:                                              ; preds = %86
  %101 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %102 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %101, i32 0, i32 6
  store i32 0, i32* %102, align 8
  %103 = load %struct.etm_config*, %struct.etm_config** %2, align 8
  %104 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %103, i32 0, i32 7
  store i32 1024, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %10
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
