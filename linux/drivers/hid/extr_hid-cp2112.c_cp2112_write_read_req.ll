; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_write_read_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_write_read_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp2112_write_read_req_report = type { i32, i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CP2112_DATA_WRITE_READ_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32*, i32)* @cp2112_write_read_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_write_read_req(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cp2112_write_read_req_report*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.cp2112_write_read_req_report*
  store %struct.cp2112_write_read_req_report* %16, %struct.cp2112_write_read_req_report** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %26, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %20, 512
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %24, 7
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %19, %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %59

29:                                               ; preds = %22
  %30 = load i32, i32* @CP2112_DATA_WRITE_READ_REQUEST, align 4
  %31 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %14, align 8
  %32 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 1
  %35 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %14, align 8
  %36 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @cpu_to_be16(i32 %37)
  %39 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %14, align 8
  %40 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %14, align 8
  %44 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %14, align 8
  %47 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.cp2112_write_read_req_report*, %struct.cp2112_write_read_req_report** %14, align 8
  %51 = getelementptr inbounds %struct.cp2112_write_read_req_report, %struct.cp2112_write_read_req_report* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @memcpy(i32* %53, i32* %54, i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 6
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %29, %26
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
