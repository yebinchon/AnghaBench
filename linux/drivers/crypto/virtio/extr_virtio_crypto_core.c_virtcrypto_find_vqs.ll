; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_find_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_find_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_crypto = type { i32, i8*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.virtqueue = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"controlq\00", align 1
@virtcrypto_dataq_callback = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"dataq.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_crypto*)* @virtcrypto_find_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtcrypto_find_vqs(%struct.virtio_crypto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_crypto*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.virtqueue**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.virtio_crypto* %0, %struct.virtio_crypto** %3, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %14 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %18 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8** @kcalloc(i32 %21, i32 8, i32 %22)
  %24 = bitcast i8** %23 to %struct.virtqueue**
  store %struct.virtqueue** %24, %struct.virtqueue*** %5, align 8
  %25 = load %struct.virtqueue**, %struct.virtqueue*** %5, align 8
  %26 = icmp ne %struct.virtqueue** %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %185

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8** @kcalloc(i32 %29, i32 8, i32 %30)
  store i8** %31, i8*** %4, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %181

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8** @kcalloc(i32 %36, i32 8, i32 %37)
  store i8** %38, i8*** %9, align 8
  %39 = load i8**, i8*** %9, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %178

42:                                               ; preds = %35
  %43 = load i8**, i8*** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  store i8* null, i8** %47, align 8
  %48 = load i8**, i8*** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %87, %42
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %56 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %53
  %60 = load i8*, i8** @virtcrypto_dataq_callback, align 8
  %61 = load i8**, i8*** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %60, i8** %64, align 8
  %65 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %66 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @snprintf(i8* %72, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %76 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8**, i8*** %9, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %82, i8** %86, align 8
  br label %87

87:                                               ; preds = %59
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %53

90:                                               ; preds = %53
  %91 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %92 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.virtqueue**, %struct.virtqueue*** %5, align 8
  %96 = bitcast %struct.virtqueue** %95 to i8**
  %97 = load i8**, i8*** %4, align 8
  %98 = load i8**, i8*** %9, align 8
  %99 = call i32 @virtio_find_vqs(%struct.TYPE_4__* %93, i32 %94, i8** %96, i8** %97, i8** %98, i32* null)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %175

103:                                              ; preds = %90
  %104 = load %struct.virtqueue**, %struct.virtqueue*** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %104, i64 %107
  %109 = load %struct.virtqueue*, %struct.virtqueue** %108, align 8
  %110 = bitcast %struct.virtqueue* %109 to i8*
  %111 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %112 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %163, %103
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %116 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %166

119:                                              ; preds = %113
  %120 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %121 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %120, i32 0, i32 2
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = call i32 @spin_lock_init(i32* %126)
  %128 = load %struct.virtqueue**, %struct.virtqueue*** %5, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %128, i64 %130
  %132 = load %struct.virtqueue*, %struct.virtqueue** %131, align 8
  %133 = bitcast %struct.virtqueue* %132 to i8*
  %134 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %135 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %134, i32 0, i32 2
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  store i8* %133, i8** %140, align 8
  %141 = load %struct.device*, %struct.device** %10, align 8
  %142 = call i32 @crypto_engine_alloc_init(%struct.device* %141, i32 1)
  %143 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %144 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %143, i32 0, i32 2
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  store i32 %142, i32* %149, align 8
  %150 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %151 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %119
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %6, align 4
  br label %174

162:                                              ; preds = %119
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %113

166:                                              ; preds = %113
  %167 = load i8**, i8*** %9, align 8
  %168 = call i32 @kfree(i8** %167)
  %169 = load i8**, i8*** %4, align 8
  %170 = call i32 @kfree(i8** %169)
  %171 = load %struct.virtqueue**, %struct.virtqueue*** %5, align 8
  %172 = bitcast %struct.virtqueue** %171 to i8**
  %173 = call i32 @kfree(i8** %172)
  store i32 0, i32* %2, align 4
  br label %187

174:                                              ; preds = %159
  br label %175

175:                                              ; preds = %174, %102
  %176 = load i8**, i8*** %9, align 8
  %177 = call i32 @kfree(i8** %176)
  br label %178

178:                                              ; preds = %175, %41
  %179 = load i8**, i8*** %4, align 8
  %180 = call i32 @kfree(i8** %179)
  br label %181

181:                                              ; preds = %178, %34
  %182 = load %struct.virtqueue**, %struct.virtqueue*** %5, align 8
  %183 = bitcast %struct.virtqueue** %182 to i8**
  %184 = call i32 @kfree(i8** %183)
  br label %185

185:                                              ; preds = %181, %27
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %166
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @virtio_find_vqs(%struct.TYPE_4__*, i32, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @crypto_engine_alloc_init(%struct.device*, i32) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
