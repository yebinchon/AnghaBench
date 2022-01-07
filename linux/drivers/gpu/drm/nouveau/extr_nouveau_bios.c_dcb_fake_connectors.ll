; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_dcb_fake_connectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_dcb_fake_connectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios = type { i32, %struct.dcb_table }
%struct.dcb_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios*)* @dcb_fake_connectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcb_fake_connectors(%struct.nvbios* %0) #0 {
  %2 = alloca %struct.nvbios*, align 8
  %3 = alloca %struct.dcb_table*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.nvbios* %0, %struct.nvbios** %2, align 8
  %9 = load %struct.nvbios*, %struct.nvbios** %2, align 8
  %10 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %9, i32 0, i32 1
  store %struct.dcb_table* %10, %struct.dcb_table** %3, align 8
  %11 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  store i32 0, i32* %6, align 4
  %12 = load %struct.nvbios*, %struct.nvbios** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @nv_match_device(i32 %14, i32 914, i32 4221, i32 8354)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.dcb_table*, %struct.dcb_table** %3, align 8
  %21 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load %struct.dcb_table*, %struct.dcb_table** %3, align 8
  %26 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %111

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %18

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %1
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %94, %40
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.dcb_table*, %struct.dcb_table** %3, align 8
  %44 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %41
  %48 = load %struct.dcb_table*, %struct.dcb_table** %3, align 8
  %49 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 15
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.dcb_table*, %struct.dcb_table** %3, align 8
  %62 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %59, i32* %67, align 4
  br label %93

68:                                               ; preds = %47
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %78
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.dcb_table*, %struct.dcb_table** %3, align 8
  %87 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %80, %58
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %41

97:                                               ; preds = %41
  %98 = load i32, i32* %5, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.nvbios*, %struct.nvbios** %2, align 8
  %102 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32* @olddcb_conntab(i32 %103)
  store i32* %104, i32** %8, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %100
  br label %111

111:                                              ; preds = %34, %110, %97
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nv_match_device(i32, i32, i32, i32) #2

declare dso_local i32* @olddcb_conntab(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
