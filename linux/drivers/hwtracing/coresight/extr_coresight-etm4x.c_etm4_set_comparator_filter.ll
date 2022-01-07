; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_set_comparator_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_set_comparator_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_config = type { i32, i8**, i8**, i8** }

@ETM_ADDR_TYPE_RANGE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etmv4_config*, i8*, i8*, i32)* @etm4_set_comparator_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm4_set_comparator_filter(%struct.etmv4_config* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.etmv4_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.etmv4_config* %0, %struct.etmv4_config** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %11 = call i8* @etm4_get_access_type(%struct.etmv4_config* %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %14 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %13, i32 0, i32 3
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  store i8* %12, i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %21 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %20, i32 0, i32 2
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8* %19, i8** %25, align 8
  %26 = load i8*, i8** @ETM_ADDR_TYPE_RANGE, align 8
  %27 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %28 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* %26, i8** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %35 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %34, i32 0, i32 3
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  store i8* %33, i8** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %43 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  store i8* %41, i8** %48, align 8
  %49 = load i8*, i8** @ETM_ADDR_TYPE_RANGE, align 8
  %50 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %51 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %50, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  store i8* %49, i8** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %57, 2
  %59 = call i32 @BIT(i32 %58)
  %60 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %61 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  ret void
}

declare dso_local i8* @etm4_get_access_type(%struct.etmv4_config*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
