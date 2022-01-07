; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_rem_ref_cm_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_rem_ref_cm_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { %struct.i40iw_cm_core*, i64, i32, %struct.i40iw_qp*, i64, i32, %struct.TYPE_2__*, i64, i64, i32, i32, i32 }
%struct.i40iw_cm_core = type { i32, i32 }
%struct.i40iw_qp = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.i40iw_cm_info = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"node destroyed before established\0A\00", align 1
@I40IW_MANAGE_APBVT_DEL = common dso_local global i32 0, align 4
@I40IW_QHASH_TYPE_TCP_ESTABLISHED = common dso_local global i32 0, align 4
@I40IW_QHASH_MANAGE_TYPE_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*)* @i40iw_rem_ref_cm_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %0) #0 {
  %2 = alloca %struct.i40iw_cm_node*, align 8
  %3 = alloca %struct.i40iw_cm_core*, align 8
  %4 = alloca %struct.i40iw_qp*, align 8
  %5 = alloca %struct.i40iw_cm_info, align 4
  %6 = alloca i64, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %2, align 8
  %7 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %8 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %7, i32 0, i32 0
  %9 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %8, align 8
  store %struct.i40iw_cm_core* %9, %struct.i40iw_cm_core** %3, align 8
  %10 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %11 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %10, i32 0, i32 0
  %12 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %11, align 8
  %13 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %17 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %16, i32 0, i32 11
  %18 = call i64 @atomic_dec_return(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %22 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %21, i32 0, i32 0
  %23 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %22, align 8
  %24 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %23, i32 0, i32 1
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %145

27:                                               ; preds = %1
  %28 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %29 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %28, i32 0, i32 10
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %32 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %31, i32 0, i32 0
  %33 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %32, align 8
  %34 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %33, i32 0, i32 1
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %38 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %27
  %42 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %43 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %49 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %48, i32 0, i32 6
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @atomic_dec(i32* %51)
  br label %53

53:                                               ; preds = %46, %41, %27
  %54 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %55 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %60 = call i32 @i40iw_handle_close_entry(%struct.i40iw_cm_node* %59, i32 0)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %63 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %62, i32 0, i32 6
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = icmp ne %struct.TYPE_2__* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %3, align 8
  %68 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %69 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %68, i32 0, i32 6
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i32 @i40iw_dec_refcnt_listen(%struct.i40iw_cm_core* %67, %struct.TYPE_2__* %70, i32 0, i32 1)
  br label %105

72:                                               ; preds = %61
  %73 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %74 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %79 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %82 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @I40IW_MANAGE_APBVT_DEL, align 4
  %85 = call i32 @i40iw_manage_apbvt(i32 %80, i32 %83, i32 %84)
  %86 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %87 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %77, %72
  %89 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %90 = call i32 @i40iw_get_addr_info(%struct.i40iw_cm_node* %89, %struct.i40iw_cm_info* %5)
  %91 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %92 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %97 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @I40IW_QHASH_TYPE_TCP_ESTABLISHED, align 4
  %100 = load i32, i32* @I40IW_QHASH_MANAGE_TYPE_DELETE, align 4
  %101 = call i32 @i40iw_manage_qhash(i32 %98, %struct.i40iw_cm_info* %5, i32 %99, i32 %100, i32* null, i32 0)
  %102 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %103 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %95, %88
  br label %105

105:                                              ; preds = %104, %66
  %106 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %107 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %106, i32 0, i32 3
  %108 = load %struct.i40iw_qp*, %struct.i40iw_qp** %107, align 8
  store %struct.i40iw_qp* %108, %struct.i40iw_qp** %4, align 8
  %109 = load %struct.i40iw_qp*, %struct.i40iw_qp** %4, align 8
  %110 = icmp ne %struct.i40iw_qp* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.i40iw_qp*, %struct.i40iw_qp** %4, align 8
  %113 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %112, i32 0, i32 1
  store i32* null, i32** %113, align 8
  %114 = load %struct.i40iw_qp*, %struct.i40iw_qp** %4, align 8
  %115 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %114, i32 0, i32 0
  %116 = call i32 @i40iw_rem_ref(i32* %115)
  %117 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %118 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %117, i32 0, i32 3
  store %struct.i40iw_qp* null, %struct.i40iw_qp** %118, align 8
  br label %136

119:                                              ; preds = %105
  %120 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %121 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %126 = call i32 @i40iw_get_addr_info(%struct.i40iw_cm_node* %125, %struct.i40iw_cm_info* %5)
  %127 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %128 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @I40IW_QHASH_TYPE_TCP_ESTABLISHED, align 4
  %131 = load i32, i32* @I40IW_QHASH_MANAGE_TYPE_DELETE, align 4
  %132 = call i32 @i40iw_manage_qhash(i32 %129, %struct.i40iw_cm_info* %5, i32 %130, i32 %131, i32* null, i32 0)
  %133 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %134 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %124, %119
  br label %136

136:                                              ; preds = %135, %111
  %137 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %138 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %137, i32 0, i32 0
  %139 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %138, align 8
  %140 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %144 = call i32 @kfree(%struct.i40iw_cm_node* %143)
  br label %145

145:                                              ; preds = %136, %20
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @i40iw_handle_close_entry(%struct.i40iw_cm_node*, i32) #1

declare dso_local i32 @i40iw_dec_refcnt_listen(%struct.i40iw_cm_core*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @i40iw_manage_apbvt(i32, i32, i32) #1

declare dso_local i32 @i40iw_get_addr_info(%struct.i40iw_cm_node*, %struct.i40iw_cm_info*) #1

declare dso_local i32 @i40iw_manage_qhash(i32, %struct.i40iw_cm_info*, i32, i32, i32*, i32) #1

declare dso_local i32 @i40iw_rem_ref(i32*) #1

declare dso_local i32 @kfree(%struct.i40iw_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
