; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_update_sg_workarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_update_sg_workarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_sg_workarea = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@u64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_sg_workarea*, i32)* @ccp_update_sg_workarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_update_sg_workarea(%struct.ccp_sg_workarea* %0, i32 %1) #0 {
  %3 = alloca %struct.ccp_sg_workarea*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccp_sg_workarea* %0, %struct.ccp_sg_workarea** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @u64, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %3, align 8
  %9 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @min_t(i32 %6, i32 %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %3, align 8
  %13 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %47

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %3, align 8
  %21 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %3, align 8
  %26 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %3, align 8
  %30 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %3, align 8
  %33 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %17
  %39 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %3, align 8
  %40 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call %struct.TYPE_3__* @sg_next(%struct.TYPE_3__* %41)
  %43 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %3, align 8
  %44 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %43, i32 0, i32 2
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %44, align 8
  %45 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %3, align 8
  %46 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %16, %38, %17
  ret void
}

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @sg_next(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
