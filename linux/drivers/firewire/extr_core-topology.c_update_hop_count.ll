; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_update_hop_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_update_hop_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_node = type { i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@__const.update_hop_count.depths = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_node*)* @update_hop_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_hop_count(%struct.fw_node* %0) #0 {
  %2 = alloca %struct.fw_node*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_node* %0, %struct.fw_node** %2, align 8
  %6 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([2 x i32]* @__const.update_hop_count.depths to i8*), i64 8, i1 false)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %98, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %10 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %101

13:                                               ; preds = %7
  %14 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %15 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp eq %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %98

23:                                               ; preds = %13
  %24 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %25 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %37 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %35, %23
  %46 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %47 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %45
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %63 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  br label %97

72:                                               ; preds = %45
  %73 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %74 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %72
  %86 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %87 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %88, i64 %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %72
  br label %97

97:                                               ; preds = %96, %58
  br label %98

98:                                               ; preds = %97, %22
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %7

101:                                              ; preds = %7
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  %105 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %106 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %4, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %109, %111
  %113 = add nsw i32 %112, 2
  %114 = call i32 @max(i32 %107, i32 %113)
  %115 = load %struct.fw_node*, %struct.fw_node** %2, align 8
  %116 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @max(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
