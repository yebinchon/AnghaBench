; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p9_sbe.c_p9_sbe_occ_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p9_sbe.c_p9_sbe_occ_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { %struct.occ_response }
%struct.occ_response = type { i32 }
%struct.p9_sbe_occ = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.occ*, i32*)* @p9_sbe_occ_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_sbe_occ_send_cmd(%struct.occ* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.occ*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.occ_response*, align 8
  %7 = alloca %struct.p9_sbe_occ*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.occ* %0, %struct.occ** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.occ*, %struct.occ** %4, align 8
  %11 = getelementptr inbounds %struct.occ, %struct.occ* %10, i32 0, i32 0
  store %struct.occ_response* %11, %struct.occ_response** %6, align 8
  %12 = load %struct.occ*, %struct.occ** %4, align 8
  %13 = call %struct.p9_sbe_occ* @to_p9_sbe_occ(%struct.occ* %12)
  store %struct.p9_sbe_occ* %13, %struct.p9_sbe_occ** %7, align 8
  store i64 4, i64* %8, align 8
  %14 = load %struct.p9_sbe_occ*, %struct.p9_sbe_occ** %7, align 8
  %15 = getelementptr inbounds %struct.p9_sbe_occ, %struct.p9_sbe_occ* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.occ_response*, %struct.occ_response** %6, align 8
  %19 = call i32 @fsi_occ_submit(i32 %16, i32* %17, i32 8, %struct.occ_response* %18, i64* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.occ_response*, %struct.occ_response** %6, align 8
  %26 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %38 [
    i32 137, label %28
    i32 128, label %31
    i32 138, label %32
    i32 136, label %32
    i32 130, label %32
    i32 139, label %32
    i32 129, label %35
    i32 140, label %35
    i32 135, label %35
    i32 133, label %35
    i32 131, label %35
    i32 132, label %35
    i32 134, label %35
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %41

31:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %41

32:                                               ; preds = %24, %24, %24, %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %41

35:                                               ; preds = %24, %24, %24, %24, %24, %24, %24
  %36 = load i32, i32* @EREMOTEIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @EPROTO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %35, %32, %31, %28
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.p9_sbe_occ* @to_p9_sbe_occ(%struct.occ*) #1

declare dso_local i32 @fsi_occ_submit(i32, i32*, i32, %struct.occ_response*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
