; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_eprom.c_eprom_read_platform_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_eprom.c_eprom_read_platform_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@EP_PAGE_DWORDS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CR_EPROM = common dso_local global i32 0, align 4
@EPROM_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SEG_SIZE = common dso_local global i64 0, align 8
@EP_PAGE_SIZE = common dso_local global i64 0, align 8
@FOOTER_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eprom_read_platform_config(%struct.hfi1_devdata* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* @EP_PAGE_DWORDS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %17 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %25 = load i32, i32* @CR_EPROM, align 4
  %26 = load i32, i32* @EPROM_TIMEOUT, align 4
  %27 = call i32 @acquire_chip_resource(%struct.hfi1_devdata* %24, i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %67

33:                                               ; preds = %23
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %35 = load i64, i64* @SEG_SIZE, align 8
  %36 = load i64, i64* @EP_PAGE_SIZE, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i64, i64* @EP_PAGE_SIZE, align 8
  %39 = call i32 @read_length(%struct.hfi1_devdata* %34, i64 %37, i64 %38, i64* %15)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %62

43:                                               ; preds = %33
  %44 = load i32, i32* @EP_PAGE_DWORDS, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %15, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FOOTER_MAGIC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %53 = load i8**, i8*** %6, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = call i32 @read_segment_platform_config(%struct.hfi1_devdata* %52, i64* %15, i8** %53, i64* %54)
  store i32 %55, i32* %10, align 4
  br label %61

56:                                               ; preds = %43
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %58 = load i8**, i8*** %6, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = call i32 @read_partition_platform_config(%struct.hfi1_devdata* %57, i8** %58, i64* %59)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %64 = load i32, i32* @CR_EPROM, align 4
  %65 = call i32 @release_chip_resource(%struct.hfi1_devdata* %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %30, %20
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @acquire_chip_resource(%struct.hfi1_devdata*, i32, i32) #2

declare dso_local i32 @read_length(%struct.hfi1_devdata*, i64, i64, i64*) #2

declare dso_local i32 @read_segment_platform_config(%struct.hfi1_devdata*, i64*, i8**, i64*) #2

declare dso_local i32 @read_partition_platform_config(%struct.hfi1_devdata*, i8**, i64*) #2

declare dso_local i32 @release_chip_resource(%struct.hfi1_devdata*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
