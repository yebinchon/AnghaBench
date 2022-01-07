; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_sa_manager = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_sa_bo = type { i32, i32, i32*, %struct.radeon_sa_manager* }
%struct.radeon_fence = type { i32 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_sa_bo_new(%struct.radeon_device* %0, %struct.radeon_sa_manager* %1, %struct.radeon_sa_bo** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_sa_manager*, align 8
  %9 = alloca %struct.radeon_sa_bo**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store %struct.radeon_sa_manager* %1, %struct.radeon_sa_manager** %8, align 8
  store %struct.radeon_sa_bo** %2, %struct.radeon_sa_bo*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca %struct.radeon_fence*, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %27 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %34 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ugt i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.radeon_sa_bo* @kmalloc(i32 24, i32 %39)
  %41 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %9, align 8
  store %struct.radeon_sa_bo* %40, %struct.radeon_sa_bo** %41, align 8
  %42 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %9, align 8
  %43 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %42, align 8
  %44 = icmp eq %struct.radeon_sa_bo* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %5
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %171

48:                                               ; preds = %5
  %49 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %50 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %9, align 8
  %51 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %50, align 8
  %52 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %51, i32 0, i32 3
  store %struct.radeon_sa_manager* %49, %struct.radeon_sa_manager** %52, align 8
  %53 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %9, align 8
  %54 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %53, align 8
  %55 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %9, align 8
  %57 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %56, align 8
  %58 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %57, i32 0, i32 1
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %9, align 8
  %61 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %60, align 8
  %62 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %61, i32 0, i32 0
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %65 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  br label %68

68:                                               ; preds = %157, %48
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %21, i64 %75
  store %struct.radeon_fence* null, %struct.radeon_fence** %76, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %24, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %69

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %100, %83
  %85 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %86 = call i32 @radeon_sa_bo_try_free(%struct.radeon_sa_manager* %85)
  %87 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %88 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %9, align 8
  %89 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i64 @radeon_sa_bo_try_alloc(%struct.radeon_sa_manager* %87, %struct.radeon_sa_bo* %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %96 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %171

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %102 = call i64 @radeon_sa_bo_next_hole(%struct.radeon_sa_manager* %101, %struct.radeon_fence** %21, i32* %24)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %84, label %104

104:                                              ; preds = %100
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %115, %104
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %21, i64 %111
  %113 = load %struct.radeon_fence*, %struct.radeon_fence** %112, align 8
  %114 = call i32 @radeon_fence_ref(%struct.radeon_fence* %113)
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %105

118:                                              ; preds = %105
  %119 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %120 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %124 = call i32 @radeon_fence_wait_any(%struct.radeon_device* %123, %struct.radeon_fence** %21, i32 0)
  store i32 %124, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %134, %118
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %21, i64 %131
  %133 = call i32 @radeon_fence_unref(%struct.radeon_fence** %132)
  br label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %125

137:                                              ; preds = %125
  %138 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %139 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = call i32 @spin_lock(i32* %140)
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* @ENOENT, align 4
  %144 = sub nsw i32 0, %143
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %137
  %147 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %148 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %147, i32 0, i32 2
  %149 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @radeon_sa_event(%struct.radeon_sa_manager* %149, i32 %150, i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @wait_event_interruptible_locked(i32 %154, i32 %152)
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %146, %137
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  br i1 %160, label %68, label %161

161:                                              ; preds = %157
  %162 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %8, align 8
  %163 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = call i32 @spin_unlock(i32* %164)
  %166 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %9, align 8
  %167 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %166, align 8
  %168 = call i32 @kfree(%struct.radeon_sa_bo* %167)
  %169 = load %struct.radeon_sa_bo**, %struct.radeon_sa_bo*** %9, align 8
  store %struct.radeon_sa_bo* null, %struct.radeon_sa_bo** %169, align 8
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %171

171:                                              ; preds = %161, %94, %45
  %172 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local %struct.radeon_sa_bo* @kmalloc(i32, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @radeon_sa_bo_try_free(%struct.radeon_sa_manager*) #2

declare dso_local i64 @radeon_sa_bo_try_alloc(%struct.radeon_sa_manager*, %struct.radeon_sa_bo*, i32, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i64 @radeon_sa_bo_next_hole(%struct.radeon_sa_manager*, %struct.radeon_fence**, i32*) #2

declare dso_local i32 @radeon_fence_ref(%struct.radeon_fence*) #2

declare dso_local i32 @radeon_fence_wait_any(%struct.radeon_device*, %struct.radeon_fence**, i32) #2

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #2

declare dso_local i32 @wait_event_interruptible_locked(i32, i32) #2

declare dso_local i32 @radeon_sa_event(%struct.radeon_sa_manager*, i32, i32) #2

declare dso_local i32 @kfree(%struct.radeon_sa_bo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
