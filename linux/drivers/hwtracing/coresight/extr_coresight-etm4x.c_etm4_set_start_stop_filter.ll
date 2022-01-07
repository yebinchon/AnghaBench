; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_set_start_stop_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_set_start_stop_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_config = type { i32*, i32, i8**, i8** }

@ETM_ADDR_TYPE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etmv4_config*, i8*, i32, i32)* @etm4_set_start_stop_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm4_set_start_stop_filter(%struct.etmv4_config* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.etmv4_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.etmv4_config* %0, %struct.etmv4_config** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %12 = call i8* @etm4_get_access_type(%struct.etmv4_config* %11)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %15 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %14, i32 0, i32 3
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  store i8* %13, i8** %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %22 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %21, i32 0, i32 2
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  store i8* %20, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %29 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ETM_ADDR_TYPE_START, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 16
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @BIT(i32 %41)
  %43 = load %struct.etmv4_config*, %struct.etmv4_config** %5, align 8
  %44 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
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
