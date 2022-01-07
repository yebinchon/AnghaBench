; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_set_dm_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_set_dm_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_dm_workarea = type { i32, i64 }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_dm_workarea*, i32, %struct.scatterlist*, i32, i32)* @ccp_set_dm_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_set_dm_area(%struct.ccp_dm_workarea* %0, i32 %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccp_dm_workarea*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ccp_dm_workarea* %0, %struct.ccp_dm_workarea** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %7, align 8
  %13 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %7, align 8
  %21 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sub i32 %22, %23
  %25 = icmp ugt i32 %19, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %40

29:                                               ; preds = %5
  %30 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %7, align 8
  %31 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @scatterwalk_map_and_copy(i64 %35, %struct.scatterlist* %36, i32 %37, i32 %38, i32 0)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %29, %26
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64, %struct.scatterlist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
