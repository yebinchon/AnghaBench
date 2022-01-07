; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_set_private_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_set_private_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_id_private*, i8*, i64)* @cm_set_private_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_set_private_data(%struct.cm_id_private* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.cm_id_private* %0, %struct.cm_id_private** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %8 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %13 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %18 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @kfree(i8* %19)
  br label %21

21:                                               ; preds = %16, %11, %3
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %24 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %27 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  ret void
}

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
