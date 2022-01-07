; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dma_resv* }
%struct.dma_resv = type { i32 }
%struct.nouveau_channel = type { i32, %struct.nouveau_fence_chan* }
%struct.nouveau_fence_chan = type { i64 (%struct.nouveau_fence*, %struct.nouveau_channel.0*, %struct.nouveau_channel.0*)* }
%struct.nouveau_fence = type opaque
%struct.nouveau_channel.0 = type opaque
%struct.dma_fence = type { i32 }
%struct.dma_resv_list = type { i32, i32* }
%struct.nouveau_fence.1 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fence_sync(%struct.nouveau_bo* %0, %struct.nouveau_channel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_bo*, align 8
  %7 = alloca %struct.nouveau_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_fence_chan*, align 8
  %11 = alloca %struct.dma_fence*, align 8
  %12 = alloca %struct.dma_resv*, align 8
  %13 = alloca %struct.dma_resv_list*, align 8
  %14 = alloca %struct.nouveau_fence.1*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nouveau_channel*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nouveau_channel*, align 8
  %20 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %6, align 8
  store %struct.nouveau_channel* %1, %struct.nouveau_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %22 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %21, i32 0, i32 1
  %23 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %22, align 8
  store %struct.nouveau_fence_chan* %23, %struct.nouveau_fence_chan** %10, align 8
  %24 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %25 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.dma_resv*, %struct.dma_resv** %27, align 8
  store %struct.dma_resv* %28, %struct.dma_resv** %12, align 8
  store i32 0, i32* %15, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %4
  %32 = load %struct.dma_resv*, %struct.dma_resv** %12, align 8
  %33 = call i32 @dma_resv_reserve_shared(%struct.dma_resv* %32, i32 1)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %5, align 4
  br label %180

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.dma_resv*, %struct.dma_resv** %12, align 8
  %41 = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %40)
  store %struct.dma_resv_list* %41, %struct.dma_resv_list** %13, align 8
  %42 = load %struct.dma_resv*, %struct.dma_resv** %12, align 8
  %43 = call %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv* %42)
  store %struct.dma_fence* %43, %struct.dma_fence** %11, align 8
  %44 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %45 = icmp ne %struct.dma_fence* %44, null
  br i1 %45, label %46, label %101

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %51 = icmp ne %struct.dma_resv_list* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %54 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %101, label %57

57:                                               ; preds = %52, %49, %46
  store %struct.nouveau_channel* null, %struct.nouveau_channel** %17, align 8
  store i32 1, i32* %18, align 4
  %58 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %59 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %60 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.nouveau_fence.1* @nouveau_local_fence(%struct.dma_fence* %58, i32 %61)
  store %struct.nouveau_fence.1* %62, %struct.nouveau_fence.1** %14, align 8
  %63 = load %struct.nouveau_fence.1*, %struct.nouveau_fence.1** %14, align 8
  %64 = icmp ne %struct.nouveau_fence.1* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %57
  %66 = call i32 (...) @rcu_read_lock()
  %67 = load %struct.nouveau_fence.1*, %struct.nouveau_fence.1** %14, align 8
  %68 = getelementptr inbounds %struct.nouveau_fence.1, %struct.nouveau_fence.1* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.nouveau_channel* @rcu_dereference(i32 %69)
  store %struct.nouveau_channel* %70, %struct.nouveau_channel** %17, align 8
  %71 = load %struct.nouveau_channel*, %struct.nouveau_channel** %17, align 8
  %72 = icmp ne %struct.nouveau_channel* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %65
  %74 = load %struct.nouveau_channel*, %struct.nouveau_channel** %17, align 8
  %75 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %76 = icmp eq %struct.nouveau_channel* %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %10, align 8
  %79 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %78, i32 0, i32 0
  %80 = load i64 (%struct.nouveau_fence*, %struct.nouveau_channel.0*, %struct.nouveau_channel.0*)*, i64 (%struct.nouveau_fence*, %struct.nouveau_channel.0*, %struct.nouveau_channel.0*)** %79, align 8
  %81 = load %struct.nouveau_fence.1*, %struct.nouveau_fence.1** %14, align 8
  %82 = bitcast %struct.nouveau_fence.1* %81 to %struct.nouveau_fence*
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %17, align 8
  %84 = bitcast %struct.nouveau_channel* %83 to %struct.nouveau_channel.0*
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %86 = bitcast %struct.nouveau_channel* %85 to %struct.nouveau_channel.0*
  %87 = call i64 %80(%struct.nouveau_fence* %82, %struct.nouveau_channel.0* %84, %struct.nouveau_channel.0* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77, %73
  store i32 0, i32* %18, align 4
  br label %90

90:                                               ; preds = %89, %77, %65
  %91 = call i32 (...) @rcu_read_unlock()
  br label %92

92:                                               ; preds = %90, %57
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @dma_fence_wait(%struct.dma_fence* %96, i32 %97)
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %5, align 4
  br label %180

101:                                              ; preds = %52, %39
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %106 = icmp ne %struct.dma_resv_list* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %5, align 4
  br label %180

109:                                              ; preds = %104
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %175, %109
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %113 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi i1 [ false, %110 ], [ %119, %116 ]
  br i1 %121, label %122, label %178

122:                                              ; preds = %120
  store %struct.nouveau_channel* null, %struct.nouveau_channel** %19, align 8
  store i32 1, i32* %20, align 4
  %123 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %124 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dma_resv*, %struct.dma_resv** %12, align 8
  %131 = call i32 @dma_resv_held(%struct.dma_resv* %130)
  %132 = call %struct.dma_fence* @rcu_dereference_protected(i32 %129, i32 %131)
  store %struct.dma_fence* %132, %struct.dma_fence** %11, align 8
  %133 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %134 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %135 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.nouveau_fence.1* @nouveau_local_fence(%struct.dma_fence* %133, i32 %136)
  store %struct.nouveau_fence.1* %137, %struct.nouveau_fence.1** %14, align 8
  %138 = load %struct.nouveau_fence.1*, %struct.nouveau_fence.1** %14, align 8
  %139 = icmp ne %struct.nouveau_fence.1* %138, null
  br i1 %139, label %140, label %167

140:                                              ; preds = %122
  %141 = call i32 (...) @rcu_read_lock()
  %142 = load %struct.nouveau_fence.1*, %struct.nouveau_fence.1** %14, align 8
  %143 = getelementptr inbounds %struct.nouveau_fence.1, %struct.nouveau_fence.1* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.nouveau_channel* @rcu_dereference(i32 %144)
  store %struct.nouveau_channel* %145, %struct.nouveau_channel** %19, align 8
  %146 = load %struct.nouveau_channel*, %struct.nouveau_channel** %19, align 8
  %147 = icmp ne %struct.nouveau_channel* %146, null
  br i1 %147, label %148, label %165

148:                                              ; preds = %140
  %149 = load %struct.nouveau_channel*, %struct.nouveau_channel** %19, align 8
  %150 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %151 = icmp eq %struct.nouveau_channel* %149, %150
  br i1 %151, label %164, label %152

152:                                              ; preds = %148
  %153 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %10, align 8
  %154 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %153, i32 0, i32 0
  %155 = load i64 (%struct.nouveau_fence*, %struct.nouveau_channel.0*, %struct.nouveau_channel.0*)*, i64 (%struct.nouveau_fence*, %struct.nouveau_channel.0*, %struct.nouveau_channel.0*)** %154, align 8
  %156 = load %struct.nouveau_fence.1*, %struct.nouveau_fence.1** %14, align 8
  %157 = bitcast %struct.nouveau_fence.1* %156 to %struct.nouveau_fence*
  %158 = load %struct.nouveau_channel*, %struct.nouveau_channel** %19, align 8
  %159 = bitcast %struct.nouveau_channel* %158 to %struct.nouveau_channel.0*
  %160 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %161 = bitcast %struct.nouveau_channel* %160 to %struct.nouveau_channel.0*
  %162 = call i64 %155(%struct.nouveau_fence* %157, %struct.nouveau_channel.0* %159, %struct.nouveau_channel.0* %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %152, %148
  store i32 0, i32* %20, align 4
  br label %165

165:                                              ; preds = %164, %152, %140
  %166 = call i32 (...) @rcu_read_unlock()
  br label %167

167:                                              ; preds = %165, %122
  %168 = load i32, i32* %20, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @dma_fence_wait(%struct.dma_fence* %171, i32 %172)
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %170, %167
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %16, align 4
  br label %110

178:                                              ; preds = %120
  %179 = load i32, i32* %15, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %107, %99, %36
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @dma_resv_reserve_shared(%struct.dma_resv*, i32) #1

declare dso_local %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv*) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv*) #1

declare dso_local %struct.nouveau_fence.1* @nouveau_local_fence(%struct.dma_fence*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nouveau_channel* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dma_resv_held(%struct.dma_resv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
