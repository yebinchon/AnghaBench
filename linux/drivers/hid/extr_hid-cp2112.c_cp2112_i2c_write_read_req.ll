; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_i2c_write_read_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_i2c_write_read_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp2112_write_read_req_report = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CP2112_DATA_WRITE_READ_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32, i32)* @cp2112_i2c_write_read_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_i2c_write_read_req(i8* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cp2112_write_read_req_report*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.cp2112_write_read_req_report*
  store %struct.cp2112_write_read_req_report* %14, %struct.cp2112_write_read_req_report** %12, align 8
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 512
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %17, %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %50

27:                                               ; preds = %20
  %28 = load i32, i32* @CP2112_DATA_WRITE_READ_REQUEST, align 4
  %29 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %12, align 8
  %30 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %31, 1
  %33 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %12, align 8
  %34 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @cpu_to_be16(i32 %35)
  %37 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %12, align 8
  %38 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %12, align 8
  %41 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %12, align 8
  %43 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @memcpy(i32 %44, i32* %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 5
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %27, %24
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
