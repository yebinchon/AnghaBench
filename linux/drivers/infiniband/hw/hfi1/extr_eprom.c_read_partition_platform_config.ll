; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_eprom.c_read_partition_platform_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_eprom.c_read_partition_platform_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@P1_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@P1_START = common dso_local global i32 0, align 4
@IMAGE_START_MAGIC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IMAGE_TRAIL_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i8**, i32*)* @read_partition_platform_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_partition_platform_config(%struct.hfi1_devdata* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @P1_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 %12, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %22 = load i32, i32* @P1_START, align 4
  %23 = load i32, i32* @P1_SIZE, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @read_length(%struct.hfi1_devdata* %21, i32 %22, i32 %23, i8* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kfree(i8* %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %65

32:                                               ; preds = %20
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @IMAGE_START_MAGIC, align 4
  %35 = load i32, i32* @IMAGE_START_MAGIC, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = call i64 @memcmp(i8* %33, i32 %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %65

44:                                               ; preds = %32
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @IMAGE_TRAIL_MAGIC, align 4
  %47 = load i32, i32* @P1_SIZE, align 4
  %48 = call i8* @strnstr(i8* %45, i32 %46, i32 %47)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %60

58:                                               ; preds = %44
  %59 = load i32, i32* @P1_SIZE, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %51
  %61 = load i8*, i8** %8, align 8
  %62 = load i8**, i8*** %6, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %39, %28, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @read_length(%struct.hfi1_devdata*, i32, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @strnstr(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
