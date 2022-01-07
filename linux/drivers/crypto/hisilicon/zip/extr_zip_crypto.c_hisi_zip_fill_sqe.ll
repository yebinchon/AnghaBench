; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_fill_sqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_fill_sqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_sqe = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }

@HZIP_REQ_TYPE_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_zip_sqe*, i32, i32, i32, i8*, i8*)* @hisi_zip_fill_sqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_zip_fill_sqe(%struct.hisi_zip_sqe* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.hisi_zip_sqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.hisi_zip_sqe* %0, %struct.hisi_zip_sqe** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %7, align 8
  %14 = call i32 @memset(%struct.hisi_zip_sqe* %13, i32 0, i32 56)
  %15 = load i8*, i8** %11, align 8
  %16 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %7, align 8
  %17 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @HZIP_REQ_TYPE_M, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @FIELD_PREP(i32 %18, i32 %19)
  %21 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %7, align 8
  %22 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %7, align 8
  %25 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @lower_32_bits(i32 %26)
  %28 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %7, align 8
  %29 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @upper_32_bits(i32 %30)
  %32 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %7, align 8
  %33 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i8* @lower_32_bits(i32 %34)
  %36 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %7, align 8
  %37 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i8* @upper_32_bits(i32 %38)
  %40 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %7, align 8
  %41 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  ret void
}

declare dso_local i32 @memset(%struct.hisi_zip_sqe*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
