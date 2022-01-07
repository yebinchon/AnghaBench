; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_static_init_zip_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_static_init_zip_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_operation = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }

@ZIP_FLUSH_FINISH = common dso_local global i32 0, align 4
@ZLIB_FORMAT = common dso_local global i32 0, align 4
@LZS_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zip_operation*, i32)* @zip_static_init_zip_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zip_static_init_zip_ops(%struct.zip_operation* %0, i32 %1) #0 {
  %3 = alloca %struct.zip_operation*, align 8
  %4 = alloca i32, align 4
  store %struct.zip_operation* %0, %struct.zip_operation** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ZIP_FLUSH_FINISH, align 4
  %6 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %7 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %6, i32 0, i32 9
  store i32 %5, i32* %7, align 4
  %8 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %9 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %14 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %16 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* @ZLIB_FORMAT, align 4
  %18 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %19 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %22 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %21, i32 0, i32 1
  store i32 3, i32* %22, align 4
  %23 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %24 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @LZS_FORMAT, align 4
  %26 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %27 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %20, %12
  %29 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %30 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %32 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %34 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %33, i32 0, i32 4
  store i32 1, i32* %34, align 8
  %35 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %36 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %38 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %37, i32 0, i32 5
  store i32 1, i32* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
