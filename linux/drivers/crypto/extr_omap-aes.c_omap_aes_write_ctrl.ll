; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_write_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_write_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32* }
%struct.omap_aes_reqctx = type { i64 }

@FLAGS_GCM = common dso_local global i32 0, align 4
@FLAGS_CBC = common dso_local global i32 0, align 4
@FLAGS_CTR = common dso_local global i32 0, align 4
@AES_REG_CTRL_CBC = common dso_local global i32 0, align 4
@AES_REG_CTRL_CTR = common dso_local global i32 0, align 4
@AES_REG_CTRL_CTR_WIDTH_128 = common dso_local global i32 0, align 4
@AES_REG_CTRL_GCM = common dso_local global i32 0, align 4
@FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@AES_REG_CTRL_DIRECTION = common dso_local global i32 0, align 4
@AES_REG_CTRL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_aes_write_ctrl(%struct.omap_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_aes_dev*, align 8
  %4 = alloca %struct.omap_aes_reqctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_aes_dev* %0, %struct.omap_aes_dev** %3, align 8
  %9 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %10 = call i32 @omap_aes_hw_init(%struct.omap_aes_dev* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %182

15:                                               ; preds = %1
  %16 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %17 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %25 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FLAGS_GCM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @omap_aes_write(%struct.omap_aes_dev* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 4
  store i32 %40, i32* %6, align 4
  br label %31

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %15
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %49 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @AES_REG_KEY(%struct.omap_aes_dev* %49, i32 %50)
  %52 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %53 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @__le32_to_cpu(i32 %60)
  %62 = call i32 @omap_aes_write(%struct.omap_aes_dev* %48, i32 %51, i32 %61)
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %68 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FLAGS_CBC, align 4
  %71 = load i32, i32* @FLAGS_CTR, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %66
  %76 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %77 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %84 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %85 = call i32 @AES_REG_IV(%struct.omap_aes_dev* %84, i32 0)
  %86 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %87 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @omap_aes_write_n(%struct.omap_aes_dev* %83, i32 %85, i32* %90, i32 4)
  br label %92

92:                                               ; preds = %82, %75, %66
  %93 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %94 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FLAGS_GCM, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %92
  %100 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %101 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %108 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call %struct.omap_aes_reqctx* @aead_request_ctx(%struct.TYPE_6__* %109)
  store %struct.omap_aes_reqctx* %110, %struct.omap_aes_reqctx** %4, align 8
  %111 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %112 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %113 = call i32 @AES_REG_IV(%struct.omap_aes_dev* %112, i32 0)
  %114 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %4, align 8
  %115 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32*
  %118 = call i32 @omap_aes_write_n(%struct.omap_aes_dev* %111, i32 %113, i32* %117, i32 4)
  br label %119

119:                                              ; preds = %106, %99, %92
  %120 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %121 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 3
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @FLD_VAL(i32 %126, i32 4, i32 3)
  store i32 %127, i32* %8, align 4
  %128 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %129 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @FLAGS_CBC, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %119
  %135 = load i32, i32* @AES_REG_CTRL_CBC, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %134, %119
  %139 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %140 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @FLAGS_CTR, align 4
  %143 = load i32, i32* @FLAGS_GCM, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %138
  %148 = load i32, i32* @AES_REG_CTRL_CTR, align 4
  %149 = load i32, i32* @AES_REG_CTRL_CTR_WIDTH_128, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %147, %138
  %154 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %155 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @FLAGS_GCM, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i32, i32* @AES_REG_CTRL_GCM, align 4
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %160, %153
  %165 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %166 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load i32, i32* @AES_REG_CTRL_DIRECTION, align 4
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %171, %164
  %176 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %177 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %178 = call i32 @AES_REG_CTRL(%struct.omap_aes_dev* %177)
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @AES_REG_CTRL_MASK, align 4
  %181 = call i32 @omap_aes_write_mask(%struct.omap_aes_dev* %176, i32 %178, i32 %179, i32 %180)
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %175, %13
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @omap_aes_hw_init(%struct.omap_aes_dev*) #1

declare dso_local i32 @omap_aes_write(%struct.omap_aes_dev*, i32, i32) #1

declare dso_local i32 @AES_REG_KEY(%struct.omap_aes_dev*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @omap_aes_write_n(%struct.omap_aes_dev*, i32, i32*, i32) #1

declare dso_local i32 @AES_REG_IV(%struct.omap_aes_dev*, i32) #1

declare dso_local %struct.omap_aes_reqctx* @aead_request_ctx(%struct.TYPE_6__*) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @omap_aes_write_mask(%struct.omap_aes_dev*, i32, i32, i32) #1

declare dso_local i32 @AES_REG_CTRL(%struct.omap_aes_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
