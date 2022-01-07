; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_collect_async_ffdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_collect_async_ffdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbefifo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.iov_iter = type { i32 }
%struct.kvec = type { i8*, i32* }

@SBEFIFO_MAX_FFDC_SIZE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate SBE FFDC buffer\0A\00", align 1
@WRITE = common dso_local global i32 0, align 4
@SBEFIFO_CMD_GET_SBE_FFDC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error %d retrieving SBE FFDC\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Error %d decoding SBE FFDC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbefifo*)* @sbefifo_collect_async_ffdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbefifo_collect_async_ffdc(%struct.sbefifo* %0) #0 {
  %2 = alloca %struct.sbefifo*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iov_iter, align 4
  %5 = alloca %struct.kvec, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.sbefifo* %0, %struct.sbefifo** %2, align 8
  %10 = load %struct.sbefifo*, %struct.sbefifo** %2, align 8
  %11 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.sbefifo*, %struct.sbefifo** %2, align 8
  %15 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load i8*, i8** @SBEFIFO_MAX_FFDC_SIZE, align 8
  %17 = call i32* @vmalloc(i8* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %76

23:                                               ; preds = %1
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %5, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = load i8*, i8** @SBEFIFO_MAX_FFDC_SIZE, align 8
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %5, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @WRITE, align 4
  %29 = load i8*, i8** @SBEFIFO_MAX_FFDC_SIZE, align 8
  %30 = call i32 @iov_iter_kvec(%struct.iov_iter* %4, i32 %28, %struct.kvec* %5, i32 1, i8* %29)
  %31 = call i32 @cpu_to_be32(i32 2)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @SBEFIFO_CMD_GET_SBE_FFDC, align 4
  %34 = call i32 @cpu_to_be32(i32 %33)
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.sbefifo*, %struct.sbefifo** %2, align 8
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %38 = call i32 @sbefifo_do_command(%struct.sbefifo* %36, i32* %37, i32 2, %struct.iov_iter* %4)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %23
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %73

45:                                               ; preds = %23
  %46 = load i8*, i8** @SBEFIFO_MAX_FFDC_SIZE, align 8
  %47 = call i8* @iov_iter_count(%struct.iov_iter* %4)
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = udiv i64 %51, 4
  store i64 %52, i64* %7, align 8
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = load i32, i32* @SBEFIFO_CMD_GET_SBE_FFDC, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @sbefifo_parse_status(%struct.device* %53, i32 %54, i32* %55, i64 %56, i64* %7)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %45
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %73

64:                                               ; preds = %45
  %65 = load i64, i64* %7, align 8
  %66 = icmp ugt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @sbefifo_dump_ffdc(%struct.device* %68, i32* %69, i64 %70, i32 1)
  br label %72

72:                                               ; preds = %67, %64
  br label %73

73:                                               ; preds = %72, %60, %41
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @vfree(i32* %74)
  br label %76

76:                                               ; preds = %73, %20
  ret void
}

declare dso_local i32* @vmalloc(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @sbefifo_do_command(%struct.sbefifo*, i32*, i32, %struct.iov_iter*) #1

declare dso_local i8* @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @sbefifo_parse_status(%struct.device*, i32, i32*, i64, i64*) #1

declare dso_local i32 @sbefifo_dump_ffdc(%struct.device*, i32*, i64, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
