; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_i2c_write_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_i2c_write_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp2112_write_req_report = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CP2112_DATA_WRITE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32)* @cp2112_i2c_write_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_i2c_write_req(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cp2112_write_req_report*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cp2112_write_req_report*
  store %struct.cp2112_write_req_report* %12, %struct.cp2112_write_req_report** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load i32, i32* @CP2112_DATA_WRITE_REQUEST, align 4
  %21 = load %struct.cp2112_write_req_report*, %struct.cp2112_write_req_report** %10, align 8
  %22 = getelementptr inbounds %struct.cp2112_write_req_report, %struct.cp2112_write_req_report* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 1
  %25 = load %struct.cp2112_write_req_report*, %struct.cp2112_write_req_report** %10, align 8
  %26 = getelementptr inbounds %struct.cp2112_write_req_report, %struct.cp2112_write_req_report* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.cp2112_write_req_report*, %struct.cp2112_write_req_report** %10, align 8
  %29 = getelementptr inbounds %struct.cp2112_write_req_report, %struct.cp2112_write_req_report* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cp2112_write_req_report*, %struct.cp2112_write_req_report** %10, align 8
  %31 = getelementptr inbounds %struct.cp2112_write_req_report, %struct.cp2112_write_req_report* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @memcpy(i32 %32, i32* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 3
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %19, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
