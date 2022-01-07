; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_parse_id1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_parse_id1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_device = type { i8*, i8, i8, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"ID CRC invalid found 0x%x, expected 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipack_device*)* @ipack_parse_id1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipack_parse_id1(%struct.ipack_device* %0) #0 {
  %2 = alloca %struct.ipack_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store %struct.ipack_device* %0, %struct.ipack_device** %2, align 8
  %5 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %6 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 4
  %10 = load i8, i8* %9, align 1
  %11 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %12 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %11, i32 0, i32 1
  store i8 %10, i8* %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 5
  %15 = load i8, i8* %14, align 1
  %16 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %17 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %16, i32 0, i32 2
  store i8 %15, i8* %17, align 1
  %18 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %19 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %18, i32 0, i32 3
  store i32 1, i32* %19, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 7
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 72
  %25 = zext i1 %24 to i32
  %26 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %27 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %29 = call signext i8 @ipack_calc_crc1(%struct.ipack_device* %28)
  store i8 %29, i8* %4, align 1
  %30 = load i8, i8* %4, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 11
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %31, %35
  %37 = zext i1 %36 to i32
  %38 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %39 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %41 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %1
  %45 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %46 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %45, i32 0, i32 6
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 11
  %49 = load i8, i8* %48, align 1
  %50 = load i8, i8* %4, align 1
  %51 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8 signext %49, i8 signext %50)
  br label %52

52:                                               ; preds = %44, %1
  ret void
}

declare dso_local signext i8 @ipack_calc_crc1(%struct.ipack_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
