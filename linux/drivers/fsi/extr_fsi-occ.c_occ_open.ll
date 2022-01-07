; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.occ_client* }
%struct.occ_client = type { i32, %struct.occ*, i32* }
%struct.occ = type { i32 }
%struct.miscdevice = type { i32, %struct.occ*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCC_CMD_DATA_BYTES = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@OCC_RESP_DATA_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @occ_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.occ_client*, align 8
  %7 = alloca %struct.miscdevice*, align 8
  %8 = alloca %struct.occ*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.occ_client* @kzalloc(i32 24, i32 %9)
  store %struct.occ_client* %10, %struct.occ_client** %6, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.occ_client*, %struct.occ_client** %12, align 8
  %14 = bitcast %struct.occ_client* %13 to %struct.miscdevice*
  store %struct.miscdevice* %14, %struct.miscdevice** %7, align 8
  %15 = load %struct.miscdevice*, %struct.miscdevice** %7, align 8
  %16 = bitcast %struct.miscdevice* %15 to %struct.occ_client*
  %17 = call %struct.occ* @to_occ(%struct.occ_client* %16)
  store %struct.occ* %17, %struct.occ** %8, align 8
  %18 = load %struct.occ_client*, %struct.occ_client** %6, align 8
  %19 = icmp ne %struct.occ_client* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @__get_free_page(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  %27 = load %struct.occ_client*, %struct.occ_client** %6, align 8
  %28 = getelementptr inbounds %struct.occ_client, %struct.occ_client* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.occ_client*, %struct.occ_client** %6, align 8
  %30 = getelementptr inbounds %struct.occ_client, %struct.occ_client* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %23
  %34 = load %struct.occ_client*, %struct.occ_client** %6, align 8
  %35 = call i32 @kfree(%struct.occ_client* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %23
  %39 = load %struct.occ*, %struct.occ** %8, align 8
  %40 = load %struct.occ_client*, %struct.occ_client** %6, align 8
  %41 = getelementptr inbounds %struct.occ_client, %struct.occ_client* %40, i32 0, i32 1
  store %struct.occ* %39, %struct.occ** %41, align 8
  %42 = load %struct.occ_client*, %struct.occ_client** %6, align 8
  %43 = getelementptr inbounds %struct.occ_client, %struct.occ_client* %42, i32 0, i32 0
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.occ_client*, %struct.occ_client** %6, align 8
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  store %struct.occ_client* %45, %struct.occ_client** %47, align 8
  %48 = load i64, i64* @OCC_CMD_DATA_BYTES, align 8
  %49 = add nsw i64 %48, 3
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = icmp sgt i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUILD_BUG_ON(i32 %52)
  %54 = load i64, i64* @OCC_RESP_DATA_BYTES, align 8
  %55 = add nsw i64 %54, 7
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = icmp sgt i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUILD_BUG_ON(i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %38, %33, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.occ_client* @kzalloc(i32, i32) #1

declare dso_local %struct.occ* @to_occ(%struct.occ_client*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @kfree(%struct.occ_client*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
