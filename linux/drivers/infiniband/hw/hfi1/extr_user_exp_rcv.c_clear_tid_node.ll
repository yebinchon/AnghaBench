; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_clear_tid_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_clear_tid_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i32, %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i32, i32, i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.tid_rb_node = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PT_INVALID_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_filedata*, %struct.tid_rb_node*)* @clear_tid_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_tid_node(%struct.hfi1_filedata* %0, %struct.tid_rb_node* %1) #0 {
  %3 = alloca %struct.hfi1_filedata*, align 8
  %4 = alloca %struct.tid_rb_node*, align 8
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  %6 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %3, align 8
  store %struct.tid_rb_node* %1, %struct.tid_rb_node** %4, align 8
  %7 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %7, i32 0, i32 1
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %8, align 8
  store %struct.hfi1_ctxtdata* %9, %struct.hfi1_ctxtdata** %5, align 8
  %10 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %11 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %10, i32 0, i32 4
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  store %struct.hfi1_devdata* %12, %struct.hfi1_devdata** %6, align 8
  %13 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %14 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %20 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %23 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %26 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %30 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %33 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @trace_hfi1_exp_tid_unreg(i32 %15, i32 %18, i32 %21, i32 %24, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %37 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %38 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PT_INVALID_FLUSH, align 4
  %41 = call i32 @hfi1_put_tid(%struct.hfi1_devdata* %36, i32 %39, i32 %40, i32 0, i32 0)
  %42 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %43 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %44 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %45 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @unpin_rcv_pages(%struct.hfi1_filedata* %42, i32* null, %struct.tid_rb_node* %43, i32 0, i32 %46, i32 1)
  %48 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %49 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %55 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %58 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %56, %61
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %66 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %64
  store i32 %70, i32* %68, align 4
  %71 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %72 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %77 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp eq i32 %75, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %2
  %84 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %85 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %88 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %87, i32 0, i32 2
  %89 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %90 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %89, i32 0, i32 1
  %91 = call i32 @tid_group_move(%struct.TYPE_4__* %86, i32* %88, i32* %90)
  br label %109

92:                                               ; preds = %2
  %93 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %94 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %92
  %100 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %101 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %104 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %103, i32 0, i32 1
  %105 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %106 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %105, i32 0, i32 0
  %107 = call i32 @tid_group_move(%struct.TYPE_4__* %102, i32* %104, i32* %106)
  br label %108

108:                                              ; preds = %99, %92
  br label %109

109:                                              ; preds = %108, %83
  %110 = load %struct.tid_rb_node*, %struct.tid_rb_node** %4, align 8
  %111 = call i32 @kfree(%struct.tid_rb_node* %110)
  ret void
}

declare dso_local i32 @trace_hfi1_exp_tid_unreg(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hfi1_put_tid(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @unpin_rcv_pages(%struct.hfi1_filedata*, i32*, %struct.tid_rb_node*, i32, i32, i32) #1

declare dso_local i32 @tid_group_move(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.tid_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
