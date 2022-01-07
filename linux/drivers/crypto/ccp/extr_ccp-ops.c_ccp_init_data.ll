; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_data = type { i32, i32 }
%struct.ccp_cmd_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_data*, %struct.ccp_cmd_queue*, %struct.scatterlist*, i32, i32, i32)* @ccp_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_init_data(%struct.ccp_data* %0, %struct.ccp_cmd_queue* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccp_data*, align 8
  %9 = alloca %struct.ccp_cmd_queue*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ccp_data* %0, %struct.ccp_data** %8, align 8
  store %struct.ccp_cmd_queue* %1, %struct.ccp_cmd_queue** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ccp_data*, %struct.ccp_data** %8, align 8
  %16 = call i32 @memset(%struct.ccp_data* %15, i32 0, i32 8)
  %17 = load %struct.ccp_data*, %struct.ccp_data** %8, align 8
  %18 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %17, i32 0, i32 1
  %19 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %9, align 8
  %20 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @ccp_init_sg_workarea(i32* %18, i32 %23, %struct.scatterlist* %24, i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  br label %42

31:                                               ; preds = %6
  %32 = load %struct.ccp_data*, %struct.ccp_data** %8, align 8
  %33 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %32, i32 0, i32 0
  %34 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @ccp_init_dm_workarea(i32* %33, %struct.ccp_cmd_queue* %34, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %47

42:                                               ; preds = %40, %30
  %43 = load %struct.ccp_data*, %struct.ccp_data** %8, align 8
  %44 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %9, align 8
  %45 = call i32 @ccp_free_data(%struct.ccp_data* %43, %struct.ccp_cmd_queue* %44)
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.ccp_data*, i32, i32) #1

declare dso_local i32 @ccp_init_sg_workarea(i32*, i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @ccp_init_dm_workarea(i32*, %struct.ccp_cmd_queue*, i32, i32) #1

declare dso_local i32 @ccp_free_data(%struct.ccp_data*, %struct.ccp_cmd_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
