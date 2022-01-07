; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_rsa_clear_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_rsa_clear_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qat_rsa_ctx = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.qat_rsa_ctx*)* @qat_rsa_clear_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_rsa_clear_ctx(%struct.device* %0, %struct.qat_rsa_ctx* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.qat_rsa_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.qat_rsa_ctx* %1, %struct.qat_rsa_ctx** %4, align 8
  %6 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* %5, align 4
  %10 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %10, i32 0, i32 9
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %19, i32 0, i32 9
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_free_coherent(%struct.device* %15, i32 %18, i32* %21, i32 %24)
  br label %26

26:                                               ; preds = %14, %2
  %27 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %39, i32 0, i32 16
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dma_free_coherent(%struct.device* %32, i32 %35, i32* %38, i32 %41)
  br label %43

43:                                               ; preds = %31, %26
  %44 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memset(i32* %51, i8 signext 0, i32 %54)
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %63, i32 0, i32 15
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dma_free_coherent(%struct.device* %56, i32 %59, i32* %62, i32 %65)
  br label %67

67:                                               ; preds = %48, %43
  %68 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @memset(i32* %75, i8 signext 0, i32 %76)
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %83, i32 0, i32 14
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dma_free_coherent(%struct.device* %78, i32 %79, i32* %82, i32 %85)
  br label %87

87:                                               ; preds = %72, %67
  %88 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @memset(i32* %95, i8 signext 0, i32 %96)
  %98 = load %struct.device*, %struct.device** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %101 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %104 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dma_free_coherent(%struct.device* %98, i32 %99, i32* %102, i32 %105)
  br label %107

107:                                              ; preds = %92, %87
  %108 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %109 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %114 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @memset(i32* %115, i8 signext 0, i32 %116)
  %118 = load %struct.device*, %struct.device** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %124 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %123, i32 0, i32 12
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dma_free_coherent(%struct.device* %118, i32 %119, i32* %122, i32 %125)
  br label %127

127:                                              ; preds = %112, %107
  %128 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %129 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %134 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @memset(i32* %135, i8 signext 0, i32 %136)
  %138 = load %struct.device*, %struct.device** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %141 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %144 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dma_free_coherent(%struct.device* %138, i32 %139, i32* %142, i32 %145)
  br label %147

147:                                              ; preds = %132, %127
  %148 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %149 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %167

152:                                              ; preds = %147
  %153 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %154 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @memset(i32* %155, i8 signext 0, i32 %156)
  %158 = load %struct.device*, %struct.device** %3, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %161 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %164 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %163, i32 0, i32 10
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @dma_free_coherent(%struct.device* %158, i32 %159, i32* %162, i32 %165)
  br label %167

167:                                              ; preds = %152, %147
  %168 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %169 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %168, i32 0, i32 9
  store i32* null, i32** %169, align 8
  %170 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %171 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %170, i32 0, i32 8
  store i32* null, i32** %171, align 8
  %172 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %173 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %172, i32 0, i32 7
  store i32* null, i32** %173, align 8
  %174 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %175 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %174, i32 0, i32 6
  store i32* null, i32** %175, align 8
  %176 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %177 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %176, i32 0, i32 5
  store i32* null, i32** %177, align 8
  %178 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %179 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %178, i32 0, i32 4
  store i32* null, i32** %179, align 8
  %180 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %181 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %180, i32 0, i32 3
  store i32* null, i32** %181, align 8
  %182 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %183 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %182, i32 0, i32 2
  store i32* null, i32** %183, align 8
  %184 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %185 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  %186 = load %struct.qat_rsa_ctx*, %struct.qat_rsa_ctx** %4, align 8
  %187 = getelementptr inbounds %struct.qat_rsa_ctx, %struct.qat_rsa_ctx* %186, i32 0, i32 0
  store i32 0, i32* %187, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
