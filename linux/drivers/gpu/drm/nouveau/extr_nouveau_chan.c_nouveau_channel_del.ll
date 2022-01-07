; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_10__, %struct.TYPE_12__, i32, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, i32, %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.nouveau_cli = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 (%struct.nouveau_channel*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_channel_del(%struct.nouveau_channel** %0) #0 {
  %2 = alloca %struct.nouveau_channel**, align 8
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nouveau_cli*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_channel** %0, %struct.nouveau_channel*** %2, align 8
  %6 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %2, align 8
  %7 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  store %struct.nouveau_channel* %7, %struct.nouveau_channel** %3, align 8
  %8 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %9 = icmp ne %struct.nouveau_channel* %8, null
  br i1 %9, label %10, label %117

10:                                               ; preds = %1
  %11 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %12 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.nouveau_cli*
  store %struct.nouveau_cli* %16, %struct.nouveau_cli** %4, align 8
  %17 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %18 = icmp ne %struct.nouveau_cli* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %10
  %20 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %25 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %10
  %28 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %29 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_13__* @nouveau_fence(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32 (%struct.nouveau_channel*)*, i32 (%struct.nouveau_channel*)** %37, align 8
  %39 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %40 = call i32 %38(%struct.nouveau_channel* %39)
  br label %41

41:                                               ; preds = %32, %27
  %42 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %43 = icmp ne %struct.nouveau_cli* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %46 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %45, i32 0, i32 7
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %51 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @nouveau_svmm_part(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %44, %41
  %55 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %56 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %55, i32 0, i32 5
  %57 = call i32 @nvif_object_fini(%struct.TYPE_12__* %56)
  %58 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %59 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %58, i32 0, i32 4
  %60 = call i32 @nvif_object_fini(%struct.TYPE_12__* %59)
  %61 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %62 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %61, i32 0, i32 3
  %63 = call i32 @nvif_object_fini(%struct.TYPE_12__* %62)
  %64 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %65 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %64, i32 0, i32 2
  %66 = call i32 @nvif_notify_fini(i32* %65)
  %67 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %68 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %67, i32 0, i32 1
  %69 = call i32 @nvif_object_fini(%struct.TYPE_12__* %68)
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %71 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = call i32 @nvif_object_fini(%struct.TYPE_12__* %72)
  %74 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %75 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = call i32 @nouveau_vma_del(i32* %76)
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %79 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = call i32 @nouveau_bo_unmap(%struct.TYPE_14__* %81)
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %84 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %54
  %89 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %90 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %98 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = call i32 @nouveau_bo_unpin(%struct.TYPE_14__* %100)
  br label %102

102:                                              ; preds = %96, %88, %54
  %103 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %104 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = call i32 @nouveau_bo_ref(i32* null, %struct.TYPE_14__** %105)
  %107 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %108 = call i32 @kfree(%struct.nouveau_channel* %107)
  %109 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %110 = icmp ne %struct.nouveau_cli* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %114 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %102
  br label %117

117:                                              ; preds = %116, %1
  %118 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %2, align 8
  store %struct.nouveau_channel* null, %struct.nouveau_channel** %118, align 8
  ret void
}

declare dso_local %struct.TYPE_13__* @nouveau_fence(i32) #1

declare dso_local i32 @nouveau_svmm_part(i32, i32) #1

declare dso_local i32 @nvif_object_fini(%struct.TYPE_12__*) #1

declare dso_local i32 @nvif_notify_fini(i32*) #1

declare dso_local i32 @nouveau_vma_del(i32*) #1

declare dso_local i32 @nouveau_bo_unmap(%struct.TYPE_14__*) #1

declare dso_local i32 @nouveau_bo_unpin(%struct.TYPE_14__*) #1

declare dso_local i32 @nouveau_bo_ref(i32*, %struct.TYPE_14__**) #1

declare dso_local i32 @kfree(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
