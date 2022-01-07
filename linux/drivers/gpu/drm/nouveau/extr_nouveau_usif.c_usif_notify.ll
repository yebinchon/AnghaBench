; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_usif.c_usif_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_usif.c_usif_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usif_notify = type { i32, i64, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.drm_file* }
%struct.drm_file = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%union.anon = type { %struct.nvif_notify_rep_v0 }
%struct.nvif_notify_rep_v0 = type { i32, i64, i64 }

@NVIF_NOTIFY_DROP = common dso_local global i32 0, align 4
@NVDRM_NOTIFY_USIF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usif_notify(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usif_notify*, align 8
  %11 = alloca %union.anon*, align 8
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.drm_file*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.nvif_notify_rep_v0*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.usif_notify* null, %struct.usif_notify** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %union.anon*
  store %union.anon* %17, %union.anon** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 24
  br i1 %20, label %21, label %50

21:                                               ; preds = %4
  %22 = load %union.anon*, %union.anon** %11, align 8
  %23 = bitcast %union.anon* %22 to %struct.nvif_notify_rep_v0*
  %24 = getelementptr inbounds %struct.nvif_notify_rep_v0, %struct.nvif_notify_rep_v0* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %union.anon*, %union.anon** %11, align 8
  %29 = bitcast %union.anon* %28 to %struct.nvif_notify_rep_v0*
  %30 = getelementptr inbounds %struct.nvif_notify_rep_v0, %struct.nvif_notify_rep_v0* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.usif_notify*
  store %struct.usif_notify* %33, %struct.usif_notify** %10, align 8
  %34 = icmp ne %struct.usif_notify* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @NVIF_NOTIFY_DROP, align 4
  store i32 %40, i32* %5, align 4
  br label %186

41:                                               ; preds = %27
  %42 = load %union.anon*, %union.anon** %11, align 8
  %43 = bitcast %union.anon* %42 to %struct.nvif_notify_rep_v0*
  %44 = getelementptr inbounds %struct.nvif_notify_rep_v0, %struct.nvif_notify_rep_v0* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NVDRM_NOTIFY_USIF, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  br label %56

50:                                               ; preds = %21, %4
  %51 = call i64 @WARN_ON(i32 1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @NVIF_NOTIFY_DROP, align 4
  store i32 %54, i32* %5, align 4
  br label %186

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %58 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %57, i32 0, i32 3
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %63 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  %68 = icmp ne i32 %64, %67
  br label %69

69:                                               ; preds = %61, %56
  %70 = phi i1 [ true, %56 ], [ %68, %61 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @NVIF_NOTIFY_DROP, align 4
  store i32 %75, i32* %5, align 4
  br label %186

76:                                               ; preds = %69
  %77 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %78 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load %struct.drm_file*, %struct.drm_file** %81, align 8
  store %struct.drm_file* %82, %struct.drm_file** %13, align 8
  %83 = load %struct.drm_file*, %struct.drm_file** %13, align 8
  %84 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %83, i32 0, i32 3
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.drm_device*, %struct.drm_device** %86, align 8
  store %struct.drm_device* %87, %struct.drm_device** %12, align 8
  %88 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %89 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %88, i32 0, i32 3
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @memcpy(i32* %94, i8* %95, i32 %96)
  %98 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %99 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %98, i32 0, i32 3
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @memcpy(i32* %106, i8* %107, i32 %108)
  %110 = load %union.anon*, %union.anon** %11, align 8
  %111 = bitcast %union.anon* %110 to %struct.nvif_notify_rep_v0*
  %112 = getelementptr inbounds %struct.nvif_notify_rep_v0, %struct.nvif_notify_rep_v0* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %133 [
    i32 0, label %114
  ]

114:                                              ; preds = %76
  %115 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %116 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %115, i32 0, i32 3
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = bitcast i32* %120 to i8*
  %122 = bitcast i8* %121 to %struct.nvif_notify_rep_v0*
  store %struct.nvif_notify_rep_v0* %122, %struct.nvif_notify_rep_v0** %15, align 8
  %123 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %124 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.nvif_notify_rep_v0*, %struct.nvif_notify_rep_v0** %15, align 8
  %127 = getelementptr inbounds %struct.nvif_notify_rep_v0, %struct.nvif_notify_rep_v0* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %129 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.nvif_notify_rep_v0*, %struct.nvif_notify_rep_v0** %15, align 8
  %132 = getelementptr inbounds %struct.nvif_notify_rep_v0, %struct.nvif_notify_rep_v0* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %135

133:                                              ; preds = %76
  %134 = call i32 (...) @BUG()
  br label %135

135:                                              ; preds = %133, %114
  %136 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %137 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %136, i32 0, i32 0
  %138 = load i64, i64* %14, align 8
  %139 = call i32 @spin_lock_irqsave(i32* %137, i64 %138)
  %140 = load %struct.drm_file*, %struct.drm_file** %13, align 8
  %141 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %144 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %143, i32 0, i32 3
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %142, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @WARN_ON(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %174, label %154

154:                                              ; preds = %135
  %155 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %156 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %155, i32 0, i32 3
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load %struct.drm_file*, %struct.drm_file** %13, align 8
  %161 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %160, i32 0, i32 2
  %162 = call i32 @list_add_tail(i32* %159, i32* %161)
  %163 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %164 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %163, i32 0, i32 3
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.drm_file*, %struct.drm_file** %13, align 8
  %171 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %172, %169
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %154, %135
  %175 = load %struct.drm_file*, %struct.drm_file** %13, align 8
  %176 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %175, i32 0, i32 1
  %177 = call i32 @wake_up_interruptible(i32* %176)
  %178 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %179 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %178, i32 0, i32 0
  %180 = load i64, i64* %14, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32* %179, i64 %180)
  %182 = load %struct.usif_notify*, %struct.usif_notify** %10, align 8
  %183 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %182, i32 0, i32 2
  %184 = call i32 @atomic_set(i32* %183, i32 0)
  %185 = load i32, i32* @NVIF_NOTIFY_DROP, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %174, %74, %53, %39
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
