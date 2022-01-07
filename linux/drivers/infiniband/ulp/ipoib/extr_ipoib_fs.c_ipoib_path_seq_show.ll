; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_path_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_path_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ipoib_path_iter = type { i32 }
%struct.ipoib_path = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"GID: %s\0A  complete: %6s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"  DLID:     0x%04x\0A  SL: %12d\0A  rate: %8d.%d Gb/sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ipoib_path_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_path_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipoib_path_iter*, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca %struct.ipoib_path, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ipoib_path_iter*
  store %struct.ipoib_path_iter* %11, %struct.ipoib_path_iter** %6, align 8
  %12 = load %struct.ipoib_path_iter*, %struct.ipoib_path_iter** %6, align 8
  %13 = icmp ne %struct.ipoib_path_iter* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.ipoib_path_iter*, %struct.ipoib_path_iter** %6, align 8
  %17 = call i32 @ipoib_path_iter_read(%struct.ipoib_path_iter* %16, %struct.ipoib_path* %8)
  %18 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %21 = call i32 @format_gid(i32* %19, i8* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %24 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %25 = call i64 @sa_path_get_dlid(%struct.TYPE_2__* %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %28)
  %30 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %31 = call i64 @sa_path_get_dlid(%struct.TYPE_2__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ib_rate_to_mbps(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %40 = call i64 @sa_path_get_dlid(%struct.TYPE_2__* %39)
  %41 = call i32 @be32_to_cpu(i64 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %49, 1000
  %51 = load i32, i32* %9, align 4
  %52 = srem i32 %51, 1000
  %53 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %43, i8* %48, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %33, %15
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = call i32 @seq_putc(%struct.seq_file* %55, i8 signext 10)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ipoib_path_iter_read(%struct.ipoib_path_iter*, %struct.ipoib_path*) #1

declare dso_local i32 @format_gid(i32*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @sa_path_get_dlid(%struct.TYPE_2__*) #1

declare dso_local i32 @ib_rate_to_mbps(i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
