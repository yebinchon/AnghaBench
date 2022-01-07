; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_cacheless_tid_rb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_cacheless_tid_rb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tid_rb_node = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_filedata*, %struct.tid_rb_node*)* @cacheless_tid_rb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cacheless_tid_rb_remove(%struct.hfi1_filedata* %0, %struct.tid_rb_node* %1) #0 {
  %3 = alloca %struct.hfi1_filedata*, align 8
  %4 = alloca %struct.tid_rb_node*, align 8
  %5 = alloca i64, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %3, align 8
  store %struct.tid_rb_node* %1, %struct.tid_rb_node** %4, align 8
  %6 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %15 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub i64 %16, %17
  %19 = getelementptr inbounds i32*, i32** %13, i64 %18
  store i32* null, i32** %19, align 8
  %20 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %21 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %22 = call i32 @clear_tid_node(%struct.hfi1_filedata* %20, %struct.tid_rb_node* %21)
  ret void
}

declare dso_local i32 @clear_tid_node(%struct.hfi1_filedata*, %struct.tid_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
