; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cm_alloc_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cm_alloc_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cep = type { i32 }
%struct.siw_cm_work = type { i32, %struct.siw_cep* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_cep*, i32)* @siw_cm_alloc_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_cm_alloc_work(%struct.siw_cep* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_cep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.siw_cm_work*, align 8
  store %struct.siw_cep* %0, %struct.siw_cep** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.siw_cm_work* @kmalloc(i32 16, i32 %12)
  store %struct.siw_cm_work* %13, %struct.siw_cm_work** %6, align 8
  %14 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %15 = icmp ne %struct.siw_cm_work* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %18 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %17, i32 0, i32 0
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %23 = call i32 @siw_cm_free_work(%struct.siw_cep* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %11
  %28 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %29 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %30 = getelementptr inbounds %struct.siw_cm_work, %struct.siw_cm_work* %29, i32 0, i32 1
  store %struct.siw_cep* %28, %struct.siw_cep** %30, align 8
  %31 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %32 = getelementptr inbounds %struct.siw_cm_work, %struct.siw_cm_work* %31, i32 0, i32 0
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %35 = getelementptr inbounds %struct.siw_cm_work, %struct.siw_cm_work* %34, i32 0, i32 0
  %36 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %37 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %36, i32 0, i32 0
  %38 = call i32 @list_add(i32* %35, i32* %37)
  br label %7

39:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.siw_cm_work* @kmalloc(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @siw_cm_free_work(%struct.siw_cep*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
