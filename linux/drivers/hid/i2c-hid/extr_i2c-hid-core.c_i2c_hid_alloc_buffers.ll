; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_hid = type { i64, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_hid*, i64)* @i2c_hid_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hid_alloc_buffers(%struct.i2c_hid* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_hid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_hid* %0, %struct.i2c_hid** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = add i64 16, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 %11, i32 %12)
  %14 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* %5, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 %17, i32 %18)
  %20 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kzalloc(i32 %22, i32 %23)
  %25 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  %33 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %2
  %40 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %49, %44, %39, %2
  %55 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %56 = call i32 @i2c_hid_free_buffers(%struct.i2c_hid* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %49
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_hid_free_buffers(%struct.i2c_hid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
