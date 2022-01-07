; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.h_siw_unref_mem_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.h_siw_unref_mem_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_mem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_mem**, i32)* @siw_unref_mem_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_unref_mem_sgl(%struct.siw_mem** %0, i32 %1) #0 {
  %3 = alloca %struct.siw_mem**, align 8
  %4 = alloca i32, align 4
  store %struct.siw_mem** %0, %struct.siw_mem*** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %13, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.siw_mem**, %struct.siw_mem*** %3, align 8
  %10 = load %struct.siw_mem*, %struct.siw_mem** %9, align 8
  %11 = icmp eq %struct.siw_mem* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %22

13:                                               ; preds = %8
  %14 = load %struct.siw_mem**, %struct.siw_mem*** %3, align 8
  %15 = load %struct.siw_mem*, %struct.siw_mem** %14, align 8
  %16 = call i32 @siw_mem_put(%struct.siw_mem* %15)
  %17 = load %struct.siw_mem**, %struct.siw_mem*** %3, align 8
  store %struct.siw_mem* null, %struct.siw_mem** %17, align 8
  %18 = load %struct.siw_mem**, %struct.siw_mem*** %3, align 8
  %19 = getelementptr inbounds %struct.siw_mem*, %struct.siw_mem** %18, i32 1
  store %struct.siw_mem** %19, %struct.siw_mem*** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %12, %5
  ret void
}

declare dso_local i32 @siw_mem_put(%struct.siw_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
